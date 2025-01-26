#include <font.h>
#include "lcd.h"
#include "stdlib.h"
#include "delay.h"
#include "stm32f1xx_hal.h"
//////////////////////////////////////////////////////////////////////////////////	 
//������ֻ��ѧϰʹ�ã�δ��������ɣ��������������κ���;
//ALIENTEK MiniSTM32F103������
//2.4��/2.8��/3.5��/4.3��/7�� TFTҺ������
//֧������IC�ͺŰ���:ILI9341/NT35310/NT35510/SSD1963/ST7789 ��
//����ԭ��@ALIENTEK
//������̳:www.openedv.com
//��������:2010/7/4
//�汾��V3.0
//��Ȩ���У�����ؾ���
//Copyright(C) ������������ӿƼ����޹�˾ 2014-2024
//All rights reserved	
//********************************************************************************
//V4.0 20211110
//1��ȥ���󲿷ֲ���������IC��֧��
//2��������ST7789����IC��֧��
//3���Ż�����ṹ������Դ�룩
//////////////////////////////////////////////////////////////////////////////////

 
//LCD�Ļ�����ɫ�ͱ���ɫ
u16 POINT_COLOR=0x0000;     //������ɫ
u16 BACK_COLOR=0xFFFF;      //����ɫ 

//����LCD��Ҫ����
//Ĭ��Ϊ����
_lcd_dev lcddev;

//д�Ĵ�������
//data:�Ĵ���ֵ
void LCD_WR_REG(u16 data)
{ 
    LCD_RS_CLR;//д��ַ
    LCD_CS_CLR;
    DATAOUT(data);
    LCD_WR_CLR;
    LCD_WR_SET;
    LCD_CS_SET; 
}

//д���ݺ���
//�������LCD_WR_DATAX��,��ʱ�任�ռ�.
//data:�Ĵ���ֵ
void LCD_WR_DATAX(u16 data)
{
    LCD_RS_SET;
    LCD_CS_CLR;
    DATAOUT(data);
    LCD_WR_CLR;
    LCD_WR_SET;
    LCD_CS_SET;
}

//��mdk -O1ʱ���Ż�ʱ��Ҫ����
//��ʱi
void opt_delay(u8 i)
{
    while (i--);
}

//��LCD����
//����ֵ:������ֵ
u16 LCD_RD_DATA(void)
{
    u16 t;
    GPIOB->CRL=0X88888888; //PB0-7  ��������
    GPIOB->CRH=0X88888888; //PB8-15 ��������
    GPIOB->ODR=0X0000;     //ȫ�����0

    LCD_RS_SET;
    LCD_CS_CLR;
    LCD_RD_CLR;

    opt_delay(2);
    t=DATAIN;  

    LCD_RD_SET;
    LCD_CS_SET; 

    GPIOB->CRL=0X33333333; //PB0-7  �������
    GPIOB->CRH=0X33333333; //PB8-15 �������
    GPIOB->ODR=0XFFFF;     //ȫ�������
    return t;  
}

//д�Ĵ���
//LCD_Reg:�Ĵ������
//LCD_RegValue:Ҫд���ֵ
void LCD_WriteReg(u16 LCD_Reg,u16 LCD_RegValue)
{
    LCD_WR_REG(LCD_Reg);  
    LCD_WR_DATA(LCD_RegValue);
}

//���Ĵ���
//LCD_Reg:�Ĵ������
//����ֵ:������ֵ
u16 LCD_ReadReg(u16 LCD_Reg)
{
    LCD_WR_REG(LCD_Reg);        //д��Ҫ���ļĴ�����
    return LCD_RD_DATA();
}

//��ʼдGRAM
void LCD_WriteRAM_Prepare(void)
{
    LCD_WR_REG(lcddev.wramcmd);
} 
//LCDдGRAM
//RGB_Code:��ɫֵ
void LCD_WriteRAM(u16 RGB_Code)
{
    LCD_WR_DATA(RGB_Code);      //дʮ��λGRAM
}

//��ILI93xx����������ΪGBR��ʽ��������д���ʱ��ΪRGB��ʽ��
//ͨ���ú���ת��
//c:GBR��ʽ����ɫֵ
//����ֵ��RGB��ʽ����ɫֵ
u16 LCD_BGR2RGB(u16 c)
{
    u16  r, g, b, rgb;
    b = (c >> 0) & 0x1f;
    g = (c >> 5) & 0x3f;
    r = (c >> 11) & 0x1f;
    rgb = (b << 11) + (g << 5) + (r << 0);
    return (rgb);
}

//��ȡ��ĳ�����ɫֵ
//x,y:����
//����ֵ:�˵����ɫ
u16 LCD_ReadPoint(u16 x,u16 y)
{
    u16 r, g, b;

    if (x >= lcddev.width || y >= lcddev.height)return 0;   //�����˷�Χ,ֱ�ӷ���

    LCD_SetCursor(x, y);

    if (lcddev.id == 0X5510)    //5510 ���Ͷ�GRAMָ��
    {
        LCD_WR_REG(0X2E00);
    }
    else                        //����IC(9341/5310/1963/7789)���Ͷ�GRAMָ��
    {
        LCD_WR_REG(0X2E);
    }

    r = LCD_RD_DATA();          //�ٶ�

    if (lcddev.id == 0X1963)    //��1963��˵,�����
    {
        return r;               //1963ֱ�Ӷ��Ϳ���
    }

    r = LCD_RD_DATA();          //ʵ��������ɫ

    //9341/5310/5510/7789 Ҫ��2�ζ���
    b = LCD_RD_DATA();
    g = r & 0XFF;               //���� 9341/5310/5510/7789, ��һ�ζ�ȡ����RG��ֵ,R��ǰ,G�ں�,��ռ8λ
    g <<= 8;
    return (((r >> 11) << 11) | ((g >> 10) << 5) | (b >> 11));  // 9341/5310/5510/7789 ��Ҫ��ʽת��һ��
}

//LCD������ʾ
void LCD_DisplayOn(void)
{
    if (lcddev.id == 0X5510)    //5510������ʾָ��
    {
        LCD_WR_REG(0X2900);     //������ʾ
    }
    else                        //9341/5310/1963/7789 �ȷ��Ϳ�����ʾָ��
    {
        LCD_WR_REG(0X29);       //������ʾ
    }
}

//LCD�ر���ʾ
void LCD_DisplayOff(void)
{
    if (lcddev.id == 0X5510)    //5510�ر���ʾָ��
    {
        LCD_WR_REG(0X2800);     //�ر���ʾ
    }
    else                        //9341/5310/1963/7789 �ȷ��͹ر���ʾָ��
    {
        LCD_WR_REG(0X28);       //�ر���ʾ
    }
}

//���ù��λ��
//Xpos:������
//Ypos:������
void LCD_SetCursor(u16 Xpos, u16 Ypos)
{
    if (lcddev.id == 0X1963)
    {
        if (lcddev.dir == 0)   //x������Ҫ�任
        {
            Xpos = lcddev.width - 1 - Xpos;
            LCD_WR_REG(lcddev.setxcmd);
            LCD_WR_DATA(0);
            LCD_WR_DATA(0);
            LCD_WR_DATA(Xpos >> 8);
            LCD_WR_DATA(Xpos & 0XFF);
        }
        else
        {
            LCD_WR_REG(lcddev.setxcmd);
            LCD_WR_DATA(Xpos >> 8);
            LCD_WR_DATA(Xpos & 0XFF);
            LCD_WR_DATA((lcddev.width - 1) >> 8);
            LCD_WR_DATA((lcddev.width - 1) & 0XFF);
        }

        LCD_WR_REG(lcddev.setycmd);
        LCD_WR_DATA(Ypos >> 8);
        LCD_WR_DATA(Ypos & 0XFF);
        LCD_WR_DATA((lcddev.height - 1) >> 8);
        LCD_WR_DATA((lcddev.height - 1) & 0XFF);

    }
    else if (lcddev.id == 0X5510)
    {
        LCD_WR_REG(lcddev.setxcmd);
        LCD_WR_DATA(Xpos >> 8);
        LCD_WR_REG(lcddev.setxcmd + 1);
        LCD_WR_DATA(Xpos & 0XFF);
        LCD_WR_REG(lcddev.setycmd);
        LCD_WR_DATA(Ypos >> 8);
        LCD_WR_REG(lcddev.setycmd + 1);
        LCD_WR_DATA(Ypos & 0XFF);
    }
    else     //9341/5310/7789����������
    {
        LCD_WR_REG(lcddev.setxcmd);
        LCD_WR_DATA(Xpos >> 8);
        LCD_WR_DATA(Xpos & 0XFF);
        LCD_WR_REG(lcddev.setycmd);
        LCD_WR_DATA(Ypos >> 8);
        LCD_WR_DATA(Ypos & 0XFF);
    }
}

//����LCD���Զ�ɨ�跽��
//dir:0~7,����8������(���嶨���lcd.h)
//9341/5310/5510/1963/7789��IC�Ѿ�ʵ�ʲ���
//ע��:�����������ܻ��ܵ��˺������õ�Ӱ��(������9341),
//����,һ������ΪL2R_U2D����,�������Ϊ����ɨ�跽ʽ,���ܵ�����ʾ������.
void LCD_Scan_Dir(u8 dir)
{
    u16 regval = 0;
    u16 dirreg = 0;
    u16 temp;

    //����ʱ����1963���ı�ɨ�跽��, ����IC�ı�ɨ�跽������ʱ1963�ı䷽��, ����IC���ı�ɨ�跽��
    if ((lcddev.dir == 1 && lcddev.id != 0X1963) || (lcddev.dir == 0 && lcddev.id == 0X1963))
    {
        switch (dir)   //����ת��
        {
            case 0:
                dir = 6;
                break;

            case 1:
                dir = 7;
                break;

            case 2:
                dir = 4;
                break;

            case 3:
                dir = 5;
                break;

            case 4:
                dir = 1;
                break;

            case 5:
                dir = 0;
                break;

            case 6:
                dir = 3;
                break;

            case 7:
                dir = 2;
                break;
        }
    }

    switch (dir)
    {
        case L2R_U2D://������,���ϵ���
            regval |= (0 << 7) | (0 << 6) | (0 << 5);
            break;

        case L2R_D2U://������,���µ���
            regval |= (1 << 7) | (0 << 6) | (0 << 5);
            break;

        case R2L_U2D://���ҵ���,���ϵ���
            regval |= (0 << 7) | (1 << 6) | (0 << 5);
            break;

        case R2L_D2U://���ҵ���,���µ���
            regval |= (1 << 7) | (1 << 6) | (0 << 5);
            break;

        case U2D_L2R://���ϵ���,������
            regval |= (0 << 7) | (0 << 6) | (1 << 5);
            break;

        case U2D_R2L://���ϵ���,���ҵ���
            regval |= (0 << 7) | (1 << 6) | (1 << 5);
            break;

        case D2U_L2R://���µ���,������
            regval |= (1 << 7) | (0 << 6) | (1 << 5);
            break;

        case D2U_R2L://���µ���,���ҵ���
            regval |= (1 << 7) | (1 << 6) | (1 << 5);
            break;
    }

    if (lcddev.id == 0X5510)dirreg = 0X3600;
    else dirreg = 0X36;

    if (lcddev.id == 0X9341 || lcddev.id == 0X7789)   //9341 & 7789 Ҫ����BGRλ
    {
        regval |= 0X08;
    }

    LCD_WriteReg(dirreg, regval);

    if (lcddev.id != 0X1963)   //1963�������괦��
    {
        if (regval & 0X20)
        {
            if (lcddev.width < lcddev.height)   //����X,Y
            {
                temp = lcddev.width;
                lcddev.width = lcddev.height;
                lcddev.height = temp;
            }
        }
        else
        {
            if (lcddev.width > lcddev.height)   //����X,Y
            {
                temp = lcddev.width;
                lcddev.width = lcddev.height;
                lcddev.height = temp;
            }
        }
    }

    //������ʾ����(����)��С
    if (lcddev.id == 0X5510)
    {
        LCD_WR_REG(lcddev.setxcmd);
        LCD_WR_DATA(0);
        LCD_WR_REG(lcddev.setxcmd + 1);
        LCD_WR_DATA(0);
        LCD_WR_REG(lcddev.setxcmd + 2);
        LCD_WR_DATA((lcddev.width - 1) >> 8);
        LCD_WR_REG(lcddev.setxcmd + 3);
        LCD_WR_DATA((lcddev.width - 1) & 0XFF);
        LCD_WR_REG(lcddev.setycmd);
        LCD_WR_DATA(0);
        LCD_WR_REG(lcddev.setycmd + 1);
        LCD_WR_DATA(0);
        LCD_WR_REG(lcddev.setycmd + 2);
        LCD_WR_DATA((lcddev.height - 1) >> 8);
        LCD_WR_REG(lcddev.setycmd + 3);
        LCD_WR_DATA((lcddev.height - 1) & 0XFF);
    }
    else
    {
        LCD_WR_REG(lcddev.setxcmd);
        LCD_WR_DATA(0);
        LCD_WR_DATA(0);
        LCD_WR_DATA((lcddev.width - 1) >> 8);
        LCD_WR_DATA((lcddev.width - 1) & 0XFF);
        LCD_WR_REG(lcddev.setycmd);
        LCD_WR_DATA(0);
        LCD_WR_DATA(0);
        LCD_WR_DATA((lcddev.height - 1) >> 8);
        LCD_WR_DATA((lcddev.height - 1) & 0XFF);
    }
}

//����
//x,y:����
//POINT_COLOR:�˵����ɫ
void LCD_DrawPoint(u16 x,u16 y)
{
    LCD_SetCursor(x, y);        //���ù��λ��
    LCD_WriteRAM_Prepare();     //��ʼд��GRAM
    LCD_WR_DATA(POINT_COLOR);
}

//���ٻ���
//x,y:����
//color:��ɫ
void LCD_Fast_DrawPoint(u16 x,u16 y,u16 color)
{
    if (lcddev.id == 0X5510)
    {
        LCD_WR_REG(lcddev.setxcmd);
        LCD_WR_DATA(x >> 8);
        LCD_WR_REG(lcddev.setxcmd + 1);
        LCD_WR_DATA(x & 0XFF);
        LCD_WR_REG(lcddev.setycmd);
        LCD_WR_DATA(y >> 8);
        LCD_WR_REG(lcddev.setycmd + 1);
        LCD_WR_DATA(y & 0XFF);
    }
    else if (lcddev.id == 0X1963)
    {
        if (lcddev.dir == 0)x = lcddev.width - 1 - x;

        LCD_WR_REG(lcddev.setxcmd);
        LCD_WR_DATA(x >> 8);
        LCD_WR_DATA(x & 0XFF);
        LCD_WR_DATA(x >> 8);
        LCD_WR_DATA(x & 0XFF);
        LCD_WR_REG(lcddev.setycmd);
        LCD_WR_DATA(y >> 8);
        LCD_WR_DATA(y & 0XFF);
        LCD_WR_DATA(y >> 8);
        LCD_WR_DATA(y & 0XFF);
    }
    else     //9341/5310/7789����������
    {
        LCD_WR_REG(lcddev.setxcmd);
        LCD_WR_DATA(x >> 8);
        LCD_WR_DATA(x & 0XFF);
        LCD_WR_REG(lcddev.setycmd);
        LCD_WR_DATA(y >> 8);
        LCD_WR_DATA(y & 0XFF);
    }

    LCD_RS_CLR;
    LCD_CS_CLR;
    DATAOUT(lcddev.wramcmd);    //дָ��
    LCD_WR_CLR;
    LCD_WR_SET;
    LCD_CS_SET;
    LCD_WR_DATA(color);         //д����
}

//SSD1963 ��������
//pwm:����ȼ�,0~100.Խ��Խ��.
void LCD_SSD_BackLightSet(u8 pwm)
{
    LCD_WR_REG(0xBE);           //����PWM���
    LCD_WR_DATA(0x05);          //1����PWMƵ��
    LCD_WR_DATA(pwm * 2.55);    //2����PWMռ�ձ�
    LCD_WR_DATA(0x01);          //3����C
    LCD_WR_DATA(0xFF);          //4����D
    LCD_WR_DATA(0x00);          //5����E
    LCD_WR_DATA(0x00);          //6����F
}

//����LCD��ʾ����
//dir:0,������1,����
void LCD_Display_Dir(u8 dir)
{
    lcddev.dir = dir;       //����/����

    if (dir == 0)           //����
    {
        lcddev.width = 240;
        lcddev.height = 320;

        if (lcddev.id == 0x5510)
        {
            lcddev.wramcmd = 0X2C00;
            lcddev.setxcmd = 0X2A00;
            lcddev.setycmd = 0X2B00;
            lcddev.width = 480;
            lcddev.height = 800;
        }
        else if (lcddev.id == 0X1963)
        {
            lcddev.wramcmd = 0X2C;  //����д��GRAM��ָ��
            lcddev.setxcmd = 0X2B;  //����дX����ָ��
            lcddev.setycmd = 0X2A;  //����дY����ָ��
            lcddev.width = 480;     //���ÿ��480
            lcddev.height = 800;    //���ø߶�800
        }
        else                        //����IC, ����: 9341 / 5310 / 7789��IC
        {
            lcddev.wramcmd = 0X2C;
            lcddev.setxcmd = 0X2A;
            lcddev.setycmd = 0X2B;
        }

        if (lcddev.id == 0X5310)    //�����5310 ���ʾ�� 320*480�ֱ���
        {
            lcddev.width = 320;
            lcddev.height = 480;
        }
    }
    else     //����
    {
        lcddev.width = 320;
        lcddev.height = 240;

        if (lcddev.id == 0x5510)
        {
            lcddev.wramcmd = 0X2C00;
            lcddev.setxcmd = 0X2A00;
            lcddev.setycmd = 0X2B00;
            lcddev.width = 800;
            lcddev.height = 480;
        }
        else if (lcddev.id == 0X1963)
        {
            lcddev.wramcmd = 0X2C;  //����д��GRAM��ָ��
            lcddev.setxcmd = 0X2A;  //����дX����ָ��
            lcddev.setycmd = 0X2B;  //����дY����ָ��
            lcddev.width = 800;     //���ÿ��800
            lcddev.height = 480;    //���ø߶�480
        }
        else                        //����IC, ����: 9341 / 5310 / 7789��IC
        {
            lcddev.wramcmd = 0X2C;
            lcddev.setxcmd = 0X2A;
            lcddev.setycmd = 0X2B;
        }

        if (lcddev.id == 0X5310)    //�����5310 ���ʾ�� 320*480�ֱ���
        {
            lcddev.width = 480;
            lcddev.height = 320;
        }
    }

    LCD_Scan_Dir(DFT_SCAN_DIR);     //Ĭ��ɨ�跽��
}

//���ô���,���Զ����û������굽�������Ͻ�(sx,sy).
//sx,sy:������ʼ����(���Ͻ�)
//width,height:���ڿ�Ⱥ͸߶�,�������0!!
//�����С:width*height. 
void LCD_Set_Window(u16 sx,u16 sy,u16 width,u16 height)
{    
    u16 twidth, theight;
    twidth = sx + width - 1;
    theight = sy + height - 1;

    if (lcddev.id == 0X1963 && lcddev.dir != 1)     //1963�������⴦��
    {
        sx = lcddev.width - width - sx;
        height = sy + height - 1;
        LCD_WR_REG(lcddev.setxcmd);
        LCD_WR_DATA(sx >> 8);
        LCD_WR_DATA(sx & 0XFF);
        LCD_WR_DATA((sx + width - 1) >> 8);
        LCD_WR_DATA((sx + width - 1) & 0XFF);
        LCD_WR_REG(lcddev.setycmd);
        LCD_WR_DATA(sy >> 8);
        LCD_WR_DATA(sy & 0XFF);
        LCD_WR_DATA(height >> 8);
        LCD_WR_DATA(height & 0XFF);
    }
    else if (lcddev.id == 0X5510)
    {
        LCD_WR_REG(lcddev.setxcmd);
        LCD_WR_DATA(sx >> 8);
        LCD_WR_REG(lcddev.setxcmd + 1);
        LCD_WR_DATA(sx & 0XFF);
        LCD_WR_REG(lcddev.setxcmd + 2);
        LCD_WR_DATA(twidth >> 8);
        LCD_WR_REG(lcddev.setxcmd + 3);
        LCD_WR_DATA(twidth & 0XFF);
        LCD_WR_REG(lcddev.setycmd);
        LCD_WR_DATA(sy >> 8);
        LCD_WR_REG(lcddev.setycmd + 1);
        LCD_WR_DATA(sy & 0XFF);
        LCD_WR_REG(lcddev.setycmd + 2);
        LCD_WR_DATA(theight >> 8);
        LCD_WR_REG(lcddev.setycmd + 3);
        LCD_WR_DATA(theight & 0XFF);
    }
    else     //9341/5310/7789/1963���� �� ���ô���
    {
        LCD_WR_REG(lcddev.setxcmd);
        LCD_WR_DATA(sx >> 8);
        LCD_WR_DATA(sx & 0XFF);
        LCD_WR_DATA(twidth >> 8);
        LCD_WR_DATA(twidth & 0XFF);
        LCD_WR_REG(lcddev.setycmd);
        LCD_WR_DATA(sy >> 8);
        LCD_WR_DATA(sy & 0XFF);
        LCD_WR_DATA(theight >> 8);
        LCD_WR_DATA(theight & 0XFF);
    }
}

//��ʼ��lcd
//�ó�ʼ���������Գ�ʼ������ALIENTEK��Ʒ��LCDҺ����
//������ռ�ýϴ�flash,�û����Ը����Լ���ʵ�����,ɾ��δ�õ���LCD��ʼ������.�Խ�ʡ�ռ�.
void LCD_Init(void)
{
    GPIO_InitTypeDef GPIO_Initure;

    __HAL_RCC_GPIOB_CLK_ENABLE();           	//����GPIOBʱ��
    __HAL_RCC_GPIOC_CLK_ENABLE();           	//����GPIOCʱ��

    //PC6,7,8,9,10
    GPIO_Initure.Pin=GPIO_PIN_6|GPIO_PIN_7|GPIO_PIN_8|\
                     GPIO_PIN_9|GPIO_PIN_10; 				
    GPIO_Initure.Mode=GPIO_MODE_OUTPUT_PP;  	//�������
    GPIO_Initure.Pull=GPIO_PULLUP;          	//����
    GPIO_Initure.Speed=GPIO_SPEED_FREQ_HIGH;    //����
    HAL_GPIO_Init(GPIOC,&GPIO_Initure);

    //PB0~15
    GPIO_Initure.Pin=GPIO_PIN_All;				//PB�������
    HAL_GPIO_Init(GPIOB,&GPIO_Initure);
        
    __HAL_AFIO_REMAP_SWJ_DISABLE();				//��ֹJTAG

    delay_ms(50); // delay 50 ms 
    LCD_WriteReg(0x0000,0x0001);
    delay_ms(50); // delay 50 ms 
    
    
    //����9341 ID�Ķ�ȡ
    LCD_WR_REG(0XD3);
    lcddev.id = LCD_RD_DATA();          //dummy read
    lcddev.id = LCD_RD_DATA();          //����0X00
    lcddev.id = LCD_RD_DATA();          //��ȡ0X93
    lcddev.id <<= 8;
    lcddev.id |= LCD_RD_DATA();         //��ȡ0X41

    if (lcddev.id != 0X9341)            //���� 9341 , ���Կ����ǲ��� ST7789
    {
        LCD_WR_REG(0X04);
        lcddev.id = LCD_RD_DATA();      //dummy read
        lcddev.id = LCD_RD_DATA();      //����0X85
        lcddev.id = LCD_RD_DATA();      //��ȡ0X85
        lcddev.id <<= 8;
        lcddev.id |= LCD_RD_DATA();     //��ȡ0X52

        if (lcddev.id == 0X8552)        //��8552��IDת����7789
        {
            lcddev.id = 0x7789;
        }

        if (lcddev.id != 0x7789)        //Ҳ����ST7789, �����ǲ��� NT35310
        {
            LCD_WR_REG(0XD4);
            lcddev.id = LCD_RD_DATA();  //dummy read
            lcddev.id = LCD_RD_DATA();  //����0X01
            lcddev.id = LCD_RD_DATA();  //����0X53
            lcddev.id <<= 8;
            lcddev.id |= LCD_RD_DATA(); //�������0X10

            if (lcddev.id != 0X5310)    //Ҳ����NT35310,���Կ����ǲ���NT35510
            {
                LCD_WR_REG(0XDA00);
                lcddev.id = LCD_RD_DATA();  //����0X00
                LCD_WR_REG(0XDB00);
                lcddev.id = LCD_RD_DATA();  //����0X80
                lcddev.id <<= 8;
                LCD_WR_REG(0XDC00);
                lcddev.id |= LCD_RD_DATA(); //����0X00

                if (lcddev.id == 0x8000)lcddev.id = 0x5510; //NT35510���ص�ID��8000H,Ϊ��������,����ǿ������Ϊ5510

                if (lcddev.id != 0X5510)        //Ҳ����NT5510,���Կ����ǲ���SSD1963
                {
                    LCD_WR_REG(0XA1);
                    lcddev.id = LCD_RD_DATA();
                    lcddev.id = LCD_RD_DATA();  //����0X57
                    lcddev.id <<= 8;
                    lcddev.id |= LCD_RD_DATA(); //����0X61

                    if (lcddev.id == 0X5761)lcddev.id = 0X1963; //SSD1963���ص�ID��5761H,Ϊ��������,����ǿ������Ϊ1963
                }
            }
        }
    }

    printf(" LCD ID:%x\r\n", lcddev.id); //��ӡLCD ID

    if (lcddev.id == 0X9341)    //9341��ʼ��
    {
        LCD_WR_REG(0xCF);
        LCD_WR_DATAX(0x00);
        LCD_WR_DATAX(0xC1);
        LCD_WR_DATAX(0X30);
        LCD_WR_REG(0xED);
        LCD_WR_DATAX(0x64);
        LCD_WR_DATAX(0x03);
        LCD_WR_DATAX(0X12);
        LCD_WR_DATAX(0X81);
        LCD_WR_REG(0xE8);
        LCD_WR_DATAX(0x85);
        LCD_WR_DATAX(0x10);
        LCD_WR_DATAX(0x7A);
        LCD_WR_REG(0xCB);
        LCD_WR_DATAX(0x39);
        LCD_WR_DATAX(0x2C);
        LCD_WR_DATAX(0x00);
        LCD_WR_DATAX(0x34);
        LCD_WR_DATAX(0x02);
        LCD_WR_REG(0xF7);
        LCD_WR_DATAX(0x20);
        LCD_WR_REG(0xEA);
        LCD_WR_DATAX(0x00);
        LCD_WR_DATAX(0x00);
        LCD_WR_REG(0xC0);       //Power control
        LCD_WR_DATAX(0x1B);     //VRH[5:0]
        LCD_WR_REG(0xC1);       //Power control
        LCD_WR_DATAX(0x01);     //SAP[2:0];BT[3:0]
        LCD_WR_REG(0xC5);       //VCM control
        LCD_WR_DATAX(0x30);     //3F
        LCD_WR_DATAX(0x30);     //3C
        LCD_WR_REG(0xC7);       //VCM control2
        LCD_WR_DATAX(0XB7);
        LCD_WR_REG(0x36);       // Memory Access Control
        LCD_WR_DATAX(0x48);
        LCD_WR_REG(0x3A);
        LCD_WR_DATAX(0x55);
        LCD_WR_REG(0xB1);
        LCD_WR_DATAX(0x00);
        LCD_WR_DATAX(0x1A);
        LCD_WR_REG(0xB6);       // Display Function Control
        LCD_WR_DATAX(0x0A);
        LCD_WR_DATAX(0xA2);
        LCD_WR_REG(0xF2);       // 3Gamma Function Disable
        LCD_WR_DATAX(0x00);
        LCD_WR_REG(0x26);       //Gamma curve selected
        LCD_WR_DATAX(0x01);
        LCD_WR_REG(0xE0);       //Set Gamma
        LCD_WR_DATAX(0x0F);
        LCD_WR_DATAX(0x2A);
        LCD_WR_DATAX(0x28);
        LCD_WR_DATAX(0x08);
        LCD_WR_DATAX(0x0E);
        LCD_WR_DATAX(0x08);
        LCD_WR_DATAX(0x54);
        LCD_WR_DATAX(0XA9);
        LCD_WR_DATAX(0x43);
        LCD_WR_DATAX(0x0A);
        LCD_WR_DATAX(0x0F);
        LCD_WR_DATAX(0x00);
        LCD_WR_DATAX(0x00);
        LCD_WR_DATAX(0x00);
        LCD_WR_DATAX(0x00);
        LCD_WR_REG(0XE1);       //Set Gamma
        LCD_WR_DATAX(0x00);
        LCD_WR_DATAX(0x15);
        LCD_WR_DATAX(0x17);
        LCD_WR_DATAX(0x07);
        LCD_WR_DATAX(0x11);
        LCD_WR_DATAX(0x06);
        LCD_WR_DATAX(0x2B);
        LCD_WR_DATAX(0x56);
        LCD_WR_DATAX(0x3C);
        LCD_WR_DATAX(0x05);
        LCD_WR_DATAX(0x10);
        LCD_WR_DATAX(0x0F);
        LCD_WR_DATAX(0x3F);
        LCD_WR_DATAX(0x3F);
        LCD_WR_DATAX(0x0F);
        LCD_WR_REG(0x2B);
        LCD_WR_DATAX(0x00);
        LCD_WR_DATAX(0x00);
        LCD_WR_DATAX(0x01);
        LCD_WR_DATAX(0x3f);
        LCD_WR_REG(0x2A);
        LCD_WR_DATAX(0x00);
        LCD_WR_DATAX(0x00);
        LCD_WR_DATAX(0x00);
        LCD_WR_DATAX(0xef);
        LCD_WR_REG(0x11);       //Exit Sleep
        delay_ms(120);
        LCD_WR_REG(0x29);       //display on
    }
    else if (lcddev.id == 0x7789)     //7789��ʼ��
    {
        LCD_WR_REG(0x11);

        delay_ms(120);

        LCD_WR_REG(0x36);
        LCD_WR_DATAX(0x00);


        LCD_WR_REG(0x3A);
        LCD_WR_DATAX(0X05);

        LCD_WR_REG(0xB2);
        LCD_WR_DATAX(0x0C);
        LCD_WR_DATAX(0x0C);
        LCD_WR_DATAX(0x00);
        LCD_WR_DATAX(0x33);
        LCD_WR_DATAX(0x33);

        LCD_WR_REG(0xB7);
        LCD_WR_DATAX(0x35);

        LCD_WR_REG(0xBB);       //vcom
        LCD_WR_DATAX(0x32);     //30

        LCD_WR_REG(0xC0);
        LCD_WR_DATAX(0x0C);

        LCD_WR_REG(0xC2);
        LCD_WR_DATAX(0x01);

        LCD_WR_REG(0xC3);       //vrh
        LCD_WR_DATAX(0x10);     //17 0D

        LCD_WR_REG(0xC4);       //vdv
        LCD_WR_DATAX(0x20);     //20

        LCD_WR_REG(0xC6);
        LCD_WR_DATAX(0x0f);

        LCD_WR_REG(0xD0);
        LCD_WR_DATAX(0xA4);
        LCD_WR_DATAX(0xA1);

        LCD_WR_REG(0xE0);       //Set Gamma
        LCD_WR_DATAX(0xd0);
        LCD_WR_DATAX(0x00);
        LCD_WR_DATAX(0x02);
        LCD_WR_DATAX(0x07);
        LCD_WR_DATAX(0x0a);
        LCD_WR_DATAX(0x28);
        LCD_WR_DATAX(0x32);
        LCD_WR_DATAX(0X44);
        LCD_WR_DATAX(0x42);
        LCD_WR_DATAX(0x06);
        LCD_WR_DATAX(0x0e);
        LCD_WR_DATAX(0x12);
        LCD_WR_DATAX(0x14);
        LCD_WR_DATAX(0x17);


        LCD_WR_REG(0XE1);       //Set Gamma
        LCD_WR_DATAX(0xd0);
        LCD_WR_DATAX(0x00);
        LCD_WR_DATAX(0x02);
        LCD_WR_DATAX(0x07);
        LCD_WR_DATAX(0x0a);
        LCD_WR_DATAX(0x28);
        LCD_WR_DATAX(0x31);
        LCD_WR_DATAX(0x54);
        LCD_WR_DATAX(0x47);
        LCD_WR_DATAX(0x0e);
        LCD_WR_DATAX(0x1c);
        LCD_WR_DATAX(0x17);
        LCD_WR_DATAX(0x1b);
        LCD_WR_DATAX(0x1e);


        LCD_WR_REG(0x2A);
        LCD_WR_DATAX(0x00);
        LCD_WR_DATAX(0x00);
        LCD_WR_DATAX(0x00);
        LCD_WR_DATAX(0xef);

        LCD_WR_REG(0x2B);
        LCD_WR_DATAX(0x00);
        LCD_WR_DATAX(0x00);
        LCD_WR_DATAX(0x01);
        LCD_WR_DATAX(0x3f);

        LCD_WR_REG(0x29);       //display on
    }
    else if (lcddev.id == 0x5310)
    {
        LCD_WR_REG(0xED);
        LCD_WR_DATAX(0x01);
        LCD_WR_DATAX(0xFE);

        LCD_WR_REG(0xEE);
        LCD_WR_DATAX(0xDE);
        LCD_WR_DATAX(0x21);

        LCD_WR_REG(0xF1);
        LCD_WR_DATAX(0x01);
        LCD_WR_REG(0xDF);
        LCD_WR_DATAX(0x10);

        //VCOMvoltage//
        LCD_WR_REG(0xC4);
        LCD_WR_DATAX(0x8F);	  //5f

        LCD_WR_REG(0xC6);
        LCD_WR_DATAX(0x00);
        LCD_WR_DATAX(0xE2);
        LCD_WR_DATAX(0xE2);
        LCD_WR_DATAX(0xE2);
        LCD_WR_REG(0xBF);
        LCD_WR_DATAX(0xAA);

        LCD_WR_REG(0xB0);
        LCD_WR_DATAX(0x0D);
        LCD_WR_DATAX(0x00);
        LCD_WR_DATAX(0x0D);
        LCD_WR_DATAX(0x00);
        LCD_WR_DATAX(0x11);
        LCD_WR_DATAX(0x00);
        LCD_WR_DATAX(0x19);
        LCD_WR_DATAX(0x00);
        LCD_WR_DATAX(0x21);
        LCD_WR_DATAX(0x00);
        LCD_WR_DATAX(0x2D);
        LCD_WR_DATAX(0x00);
        LCD_WR_DATAX(0x3D);
        LCD_WR_DATAX(0x00);
        LCD_WR_DATAX(0x5D);
        LCD_WR_DATAX(0x00);
        LCD_WR_DATAX(0x5D);
        LCD_WR_DATAX(0x00);

        LCD_WR_REG(0xB1);
        LCD_WR_DATAX(0x80);
        LCD_WR_DATAX(0x00);
        LCD_WR_DATAX(0x8B);
        LCD_WR_DATAX(0x00);
        LCD_WR_DATAX(0x96);
        LCD_WR_DATAX(0x00);

        LCD_WR_REG(0xB2);
        LCD_WR_DATAX(0x00);
        LCD_WR_DATAX(0x00);
        LCD_WR_DATAX(0x02);
        LCD_WR_DATAX(0x00);
        LCD_WR_DATAX(0x03);
        LCD_WR_DATAX(0x00);

        LCD_WR_REG(0xB3);
        LCD_WR_DATAX(0x00);
        LCD_WR_DATAX(0x00);
        LCD_WR_DATAX(0x00);
        LCD_WR_DATAX(0x00);
        LCD_WR_DATAX(0x00);
        LCD_WR_DATAX(0x00);
        LCD_WR_DATAX(0x00);
        LCD_WR_DATAX(0x00);
        LCD_WR_DATAX(0x00);
        LCD_WR_DATAX(0x00);
        LCD_WR_DATAX(0x00);
        LCD_WR_DATAX(0x00);
        LCD_WR_DATAX(0x00);
        LCD_WR_DATAX(0x00);
        LCD_WR_DATAX(0x00);
        LCD_WR_DATAX(0x00);
        LCD_WR_DATAX(0x00);
        LCD_WR_DATAX(0x00);
        LCD_WR_DATAX(0x00);
        LCD_WR_DATAX(0x00);
        LCD_WR_DATAX(0x00);
        LCD_WR_DATAX(0x00);
        LCD_WR_DATAX(0x00);
        LCD_WR_DATAX(0x00);

        LCD_WR_REG(0xB4);
        LCD_WR_DATAX(0x8B);
        LCD_WR_DATAX(0x00);
        LCD_WR_DATAX(0x96);
        LCD_WR_DATAX(0x00);
        LCD_WR_DATAX(0xA1);
        LCD_WR_DATAX(0x00);

        LCD_WR_REG(0xB5);
        LCD_WR_DATAX(0x02);
        LCD_WR_DATAX(0x00);
        LCD_WR_DATAX(0x03);
        LCD_WR_DATAX(0x00);
        LCD_WR_DATAX(0x04);
        LCD_WR_DATAX(0x00);

        LCD_WR_REG(0xB6);
        LCD_WR_DATAX(0x00);
        LCD_WR_DATAX(0x00);

        LCD_WR_REG(0xB7);
        LCD_WR_DATAX(0x00);
        LCD_WR_DATAX(0x00);
        LCD_WR_DATAX(0x3F);
        LCD_WR_DATAX(0x00);
        LCD_WR_DATAX(0x5E);
        LCD_WR_DATAX(0x00);
        LCD_WR_DATAX(0x64);
        LCD_WR_DATAX(0x00);
        LCD_WR_DATAX(0x8C);
        LCD_WR_DATAX(0x00);
        LCD_WR_DATAX(0xAC);
        LCD_WR_DATAX(0x00);
        LCD_WR_DATAX(0xDC);
        LCD_WR_DATAX(0x00);
        LCD_WR_DATAX(0x70);
        LCD_WR_DATAX(0x00);
        LCD_WR_DATAX(0x90);
        LCD_WR_DATAX(0x00);
        LCD_WR_DATAX(0xEB);
        LCD_WR_DATAX(0x00);
        LCD_WR_DATAX(0xDC);
        LCD_WR_DATAX(0x00);

        LCD_WR_REG(0xB8);
        LCD_WR_DATAX(0x00);
        LCD_WR_DATAX(0x00);
        LCD_WR_DATAX(0x00);
        LCD_WR_DATAX(0x00);
        LCD_WR_DATAX(0x00);
        LCD_WR_DATAX(0x00);
        LCD_WR_DATAX(0x00);
        LCD_WR_DATAX(0x00);

        LCD_WR_REG(0xBA);
        LCD_WR_DATAX(0x24);
        LCD_WR_DATAX(0x00);
        LCD_WR_DATAX(0x00);
        LCD_WR_DATAX(0x00);

        LCD_WR_REG(0xC1);
        LCD_WR_DATAX(0x20);
        LCD_WR_DATAX(0x00);
        LCD_WR_DATAX(0x54);
        LCD_WR_DATAX(0x00);
        LCD_WR_DATAX(0xFF);
        LCD_WR_DATAX(0x00);

        LCD_WR_REG(0xC2);
        LCD_WR_DATAX(0x0A);
        LCD_WR_DATAX(0x00);
        LCD_WR_DATAX(0x04);
        LCD_WR_DATAX(0x00);

        LCD_WR_REG(0xC3);
        LCD_WR_DATAX(0x3C);
        LCD_WR_DATAX(0x00);
        LCD_WR_DATAX(0x3A);
        LCD_WR_DATAX(0x00);
        LCD_WR_DATAX(0x39);
        LCD_WR_DATAX(0x00);
        LCD_WR_DATAX(0x37);
        LCD_WR_DATAX(0x00);
        LCD_WR_DATAX(0x3C);
        LCD_WR_DATAX(0x00);
        LCD_WR_DATAX(0x36);
        LCD_WR_DATAX(0x00);
        LCD_WR_DATAX(0x32);
        LCD_WR_DATAX(0x00);
        LCD_WR_DATAX(0x2F);
        LCD_WR_DATAX(0x00);
        LCD_WR_DATAX(0x2C);
        LCD_WR_DATAX(0x00);
        LCD_WR_DATAX(0x29);
        LCD_WR_DATAX(0x00);
        LCD_WR_DATAX(0x26);
        LCD_WR_DATAX(0x00);
        LCD_WR_DATAX(0x24);
        LCD_WR_DATAX(0x00);
        LCD_WR_DATAX(0x24);
        LCD_WR_DATAX(0x00);
        LCD_WR_DATAX(0x23);
        LCD_WR_DATAX(0x00);
        LCD_WR_DATAX(0x3C);
        LCD_WR_DATAX(0x00);
        LCD_WR_DATAX(0x36);
        LCD_WR_DATAX(0x00);
        LCD_WR_DATAX(0x32);
        LCD_WR_DATAX(0x00);
        LCD_WR_DATAX(0x2F);
        LCD_WR_DATAX(0x00);
        LCD_WR_DATAX(0x2C);
        LCD_WR_DATAX(0x00);
        LCD_WR_DATAX(0x29);
        LCD_WR_DATAX(0x00);
        LCD_WR_DATAX(0x26);
        LCD_WR_DATAX(0x00);
        LCD_WR_DATAX(0x24);
        LCD_WR_DATAX(0x00);
        LCD_WR_DATAX(0x24);
        LCD_WR_DATAX(0x00);
        LCD_WR_DATAX(0x23);
        LCD_WR_DATAX(0x00);

        LCD_WR_REG(0xC4);
        LCD_WR_DATAX(0x62);
        LCD_WR_DATAX(0x00);
        LCD_WR_DATAX(0x05);
        LCD_WR_DATAX(0x00);
        LCD_WR_DATAX(0x84);
        LCD_WR_DATAX(0x00);
        LCD_WR_DATAX(0xF0);
        LCD_WR_DATAX(0x00);
        LCD_WR_DATAX(0x18);
        LCD_WR_DATAX(0x00);
        LCD_WR_DATAX(0xA4);
        LCD_WR_DATAX(0x00);
        LCD_WR_DATAX(0x18);
        LCD_WR_DATAX(0x00);
        LCD_WR_DATAX(0x50);
        LCD_WR_DATAX(0x00);
        LCD_WR_DATAX(0x0C);
        LCD_WR_DATAX(0x00);
        LCD_WR_DATAX(0x17);
        LCD_WR_DATAX(0x00);
        LCD_WR_DATAX(0x95);
        LCD_WR_DATAX(0x00);
        LCD_WR_DATAX(0xF3);
        LCD_WR_DATAX(0x00);
        LCD_WR_DATAX(0xE6);
        LCD_WR_DATAX(0x00);

        LCD_WR_REG(0xC5);
        LCD_WR_DATAX(0x32);
        LCD_WR_DATAX(0x00);
        LCD_WR_DATAX(0x44);
        LCD_WR_DATAX(0x00);
        LCD_WR_DATAX(0x65);
        LCD_WR_DATAX(0x00);
        LCD_WR_DATAX(0x76);
        LCD_WR_DATAX(0x00);
        LCD_WR_DATAX(0x88);
        LCD_WR_DATAX(0x00);

        LCD_WR_REG(0xC6);
        LCD_WR_DATAX(0x20);
        LCD_WR_DATAX(0x00);
        LCD_WR_DATAX(0x17);
        LCD_WR_DATAX(0x00);
        LCD_WR_DATAX(0x01);
        LCD_WR_DATAX(0x00);

        LCD_WR_REG(0xC7);
        LCD_WR_DATAX(0x00);
        LCD_WR_DATAX(0x00);
        LCD_WR_DATAX(0x00);
        LCD_WR_DATAX(0x00);

        LCD_WR_REG(0xC8);
        LCD_WR_DATAX(0x00);
        LCD_WR_DATAX(0x00);
        LCD_WR_DATAX(0x00);
        LCD_WR_DATAX(0x00);

        LCD_WR_REG(0xC9);
        LCD_WR_DATAX(0x00);
        LCD_WR_DATAX(0x00);
        LCD_WR_DATAX(0x00);
        LCD_WR_DATAX(0x00);
        LCD_WR_DATAX(0x00);
        LCD_WR_DATAX(0x00);
        LCD_WR_DATAX(0x00);
        LCD_WR_DATAX(0x00);
        LCD_WR_DATAX(0x00);
        LCD_WR_DATAX(0x00);
        LCD_WR_DATAX(0x00);
        LCD_WR_DATAX(0x00);
        LCD_WR_DATAX(0x00);
        LCD_WR_DATAX(0x00);
        LCD_WR_DATAX(0x00);
        LCD_WR_DATAX(0x00);

        LCD_WR_REG(0xE0);
        LCD_WR_DATAX(0x16);
        LCD_WR_DATAX(0x00);
        LCD_WR_DATAX(0x1C);
        LCD_WR_DATAX(0x00);
        LCD_WR_DATAX(0x21);
        LCD_WR_DATAX(0x00);
        LCD_WR_DATAX(0x36);
        LCD_WR_DATAX(0x00);
        LCD_WR_DATAX(0x46);
        LCD_WR_DATAX(0x00);
        LCD_WR_DATAX(0x52);
        LCD_WR_DATAX(0x00);
        LCD_WR_DATAX(0x64);
        LCD_WR_DATAX(0x00);
        LCD_WR_DATAX(0x7A);
        LCD_WR_DATAX(0x00);
        LCD_WR_DATAX(0x8B);
        LCD_WR_DATAX(0x00);
        LCD_WR_DATAX(0x99);
        LCD_WR_DATAX(0x00);
        LCD_WR_DATAX(0xA8);
        LCD_WR_DATAX(0x00);
        LCD_WR_DATAX(0xB9);
        LCD_WR_DATAX(0x00);
        LCD_WR_DATAX(0xC4);
        LCD_WR_DATAX(0x00);
        LCD_WR_DATAX(0xCA);
        LCD_WR_DATAX(0x00);
        LCD_WR_DATAX(0xD2);
        LCD_WR_DATAX(0x00);
        LCD_WR_DATAX(0xD9);
        LCD_WR_DATAX(0x00);
        LCD_WR_DATAX(0xE0);
        LCD_WR_DATAX(0x00);
        LCD_WR_DATAX(0xF3);
        LCD_WR_DATAX(0x00);

        LCD_WR_REG(0xE1);
        LCD_WR_DATAX(0x16);
        LCD_WR_DATAX(0x00);
        LCD_WR_DATAX(0x1C);
        LCD_WR_DATAX(0x00);
        LCD_WR_DATAX(0x22);
        LCD_WR_DATAX(0x00);
        LCD_WR_DATAX(0x36);
        LCD_WR_DATAX(0x00);
        LCD_WR_DATAX(0x45);
        LCD_WR_DATAX(0x00);
        LCD_WR_DATAX(0x52);
        LCD_WR_DATAX(0x00);
        LCD_WR_DATAX(0x64);
        LCD_WR_DATAX(0x00);
        LCD_WR_DATAX(0x7A);
        LCD_WR_DATAX(0x00);
        LCD_WR_DATAX(0x8B);
        LCD_WR_DATAX(0x00);
        LCD_WR_DATAX(0x99);
        LCD_WR_DATAX(0x00);
        LCD_WR_DATAX(0xA8);
        LCD_WR_DATAX(0x00);
        LCD_WR_DATAX(0xB9);
        LCD_WR_DATAX(0x00);
        LCD_WR_DATAX(0xC4);
        LCD_WR_DATAX(0x00);
        LCD_WR_DATAX(0xCA);
        LCD_WR_DATAX(0x00);
        LCD_WR_DATAX(0xD2);
        LCD_WR_DATAX(0x00);
        LCD_WR_DATAX(0xD8);
        LCD_WR_DATAX(0x00);
        LCD_WR_DATAX(0xE0);
        LCD_WR_DATAX(0x00);
        LCD_WR_DATAX(0xF3);
        LCD_WR_DATAX(0x00);

        LCD_WR_REG(0xE2);
        LCD_WR_DATAX(0x05);
        LCD_WR_DATAX(0x00);
        LCD_WR_DATAX(0x0B);
        LCD_WR_DATAX(0x00);
        LCD_WR_DATAX(0x1B);
        LCD_WR_DATAX(0x00);
        LCD_WR_DATAX(0x34);
        LCD_WR_DATAX(0x00);
        LCD_WR_DATAX(0x44);
        LCD_WR_DATAX(0x00);
        LCD_WR_DATAX(0x4F);
        LCD_WR_DATAX(0x00);
        LCD_WR_DATAX(0x61);
        LCD_WR_DATAX(0x00);
        LCD_WR_DATAX(0x79);
        LCD_WR_DATAX(0x00);
        LCD_WR_DATAX(0x88);
        LCD_WR_DATAX(0x00);
        LCD_WR_DATAX(0x97);
        LCD_WR_DATAX(0x00);
        LCD_WR_DATAX(0xA6);
        LCD_WR_DATAX(0x00);
        LCD_WR_DATAX(0xB7);
        LCD_WR_DATAX(0x00);
        LCD_WR_DATAX(0xC2);
        LCD_WR_DATAX(0x00);
        LCD_WR_DATAX(0xC7);
        LCD_WR_DATAX(0x00);
        LCD_WR_DATAX(0xD1);
        LCD_WR_DATAX(0x00);
        LCD_WR_DATAX(0xD6);
        LCD_WR_DATAX(0x00);
        LCD_WR_DATAX(0xDD);
        LCD_WR_DATAX(0x00);
        LCD_WR_DATAX(0xF3);
        LCD_WR_DATAX(0x00);
        LCD_WR_REG(0xE3);
        LCD_WR_DATAX(0x05);
        LCD_WR_DATAX(0x00);
        LCD_WR_DATAX(0xA);
        LCD_WR_DATAX(0x00);
        LCD_WR_DATAX(0x1C);
        LCD_WR_DATAX(0x00);
        LCD_WR_DATAX(0x33);
        LCD_WR_DATAX(0x00);
        LCD_WR_DATAX(0x44);
        LCD_WR_DATAX(0x00);
        LCD_WR_DATAX(0x50);
        LCD_WR_DATAX(0x00);
        LCD_WR_DATAX(0x62);
        LCD_WR_DATAX(0x00);
        LCD_WR_DATAX(0x78);
        LCD_WR_DATAX(0x00);
        LCD_WR_DATAX(0x88);
        LCD_WR_DATAX(0x00);
        LCD_WR_DATAX(0x97);
        LCD_WR_DATAX(0x00);
        LCD_WR_DATAX(0xA6);
        LCD_WR_DATAX(0x00);
        LCD_WR_DATAX(0xB7);
        LCD_WR_DATAX(0x00);
        LCD_WR_DATAX(0xC2);
        LCD_WR_DATAX(0x00);
        LCD_WR_DATAX(0xC7);
        LCD_WR_DATAX(0x00);
        LCD_WR_DATAX(0xD1);
        LCD_WR_DATAX(0x00);
        LCD_WR_DATAX(0xD5);
        LCD_WR_DATAX(0x00);
        LCD_WR_DATAX(0xDD);
        LCD_WR_DATAX(0x00);
        LCD_WR_DATAX(0xF3);
        LCD_WR_DATAX(0x00);

        LCD_WR_REG(0xE4);
        LCD_WR_DATAX(0x01);
        LCD_WR_DATAX(0x00);
        LCD_WR_DATAX(0x01);
        LCD_WR_DATAX(0x00);
        LCD_WR_DATAX(0x02);
        LCD_WR_DATAX(0x00);
        LCD_WR_DATAX(0x2A);
        LCD_WR_DATAX(0x00);
        LCD_WR_DATAX(0x3C);
        LCD_WR_DATAX(0x00);
        LCD_WR_DATAX(0x4B);
        LCD_WR_DATAX(0x00);
        LCD_WR_DATAX(0x5D);
        LCD_WR_DATAX(0x00);
        LCD_WR_DATAX(0x74);
        LCD_WR_DATAX(0x00);
        LCD_WR_DATAX(0x84);
        LCD_WR_DATAX(0x00);
        LCD_WR_DATAX(0x93);
        LCD_WR_DATAX(0x00);
        LCD_WR_DATAX(0xA2);
        LCD_WR_DATAX(0x00);
        LCD_WR_DATAX(0xB3);
        LCD_WR_DATAX(0x00);
        LCD_WR_DATAX(0xBE);
        LCD_WR_DATAX(0x00);
        LCD_WR_DATAX(0xC4);
        LCD_WR_DATAX(0x00);
        LCD_WR_DATAX(0xCD);
        LCD_WR_DATAX(0x00);
        LCD_WR_DATAX(0xD3);
        LCD_WR_DATAX(0x00);
        LCD_WR_DATAX(0xDD);
        LCD_WR_DATAX(0x00);
        LCD_WR_DATAX(0xF3);
        LCD_WR_DATAX(0x00);
        LCD_WR_REG(0xE5);
        LCD_WR_DATAX(0x00);
        LCD_WR_DATAX(0x00);
        LCD_WR_DATAX(0x00);
        LCD_WR_DATAX(0x00);
        LCD_WR_DATAX(0x02);
        LCD_WR_DATAX(0x00);
        LCD_WR_DATAX(0x29);
        LCD_WR_DATAX(0x00);
        LCD_WR_DATAX(0x3C);
        LCD_WR_DATAX(0x00);
        LCD_WR_DATAX(0x4B);
        LCD_WR_DATAX(0x00);
        LCD_WR_DATAX(0x5D);
        LCD_WR_DATAX(0x00);
        LCD_WR_DATAX(0x74);
        LCD_WR_DATAX(0x00);
        LCD_WR_DATAX(0x84);
        LCD_WR_DATAX(0x00);
        LCD_WR_DATAX(0x93);
        LCD_WR_DATAX(0x00);
        LCD_WR_DATAX(0xA2);
        LCD_WR_DATAX(0x00);
        LCD_WR_DATAX(0xB3);
        LCD_WR_DATAX(0x00);
        LCD_WR_DATAX(0xBE);
        LCD_WR_DATAX(0x00);
        LCD_WR_DATAX(0xC4);
        LCD_WR_DATAX(0x00);
        LCD_WR_DATAX(0xCD);
        LCD_WR_DATAX(0x00);
        LCD_WR_DATAX(0xD3);
        LCD_WR_DATAX(0x00);
        LCD_WR_DATAX(0xDC);
        LCD_WR_DATAX(0x00);
        LCD_WR_DATAX(0xF3);
        LCD_WR_DATAX(0x00);

        LCD_WR_REG(0xE6);
        LCD_WR_DATAX(0x11);
        LCD_WR_DATAX(0x00);
        LCD_WR_DATAX(0x34);
        LCD_WR_DATAX(0x00);
        LCD_WR_DATAX(0x56);
        LCD_WR_DATAX(0x00);
        LCD_WR_DATAX(0x76);
        LCD_WR_DATAX(0x00);
        LCD_WR_DATAX(0x77);
        LCD_WR_DATAX(0x00);
        LCD_WR_DATAX(0x66);
        LCD_WR_DATAX(0x00);
        LCD_WR_DATAX(0x88);
        LCD_WR_DATAX(0x00);
        LCD_WR_DATAX(0x99);
        LCD_WR_DATAX(0x00);
        LCD_WR_DATAX(0xBB);
        LCD_WR_DATAX(0x00);
        LCD_WR_DATAX(0x99);
        LCD_WR_DATAX(0x00);
        LCD_WR_DATAX(0x66);
        LCD_WR_DATAX(0x00);
        LCD_WR_DATAX(0x55);
        LCD_WR_DATAX(0x00);
        LCD_WR_DATAX(0x55);
        LCD_WR_DATAX(0x00);
        LCD_WR_DATAX(0x45);
        LCD_WR_DATAX(0x00);
        LCD_WR_DATAX(0x43);
        LCD_WR_DATAX(0x00);
        LCD_WR_DATAX(0x44);
        LCD_WR_DATAX(0x00);

        LCD_WR_REG(0xE7);
        LCD_WR_DATAX(0x32);
        LCD_WR_DATAX(0x00);
        LCD_WR_DATAX(0x55);
        LCD_WR_DATAX(0x00);
        LCD_WR_DATAX(0x76);
        LCD_WR_DATAX(0x00);
        LCD_WR_DATAX(0x66);
        LCD_WR_DATAX(0x00);
        LCD_WR_DATAX(0x67);
        LCD_WR_DATAX(0x00);
        LCD_WR_DATAX(0x67);
        LCD_WR_DATAX(0x00);
        LCD_WR_DATAX(0x87);
        LCD_WR_DATAX(0x00);
        LCD_WR_DATAX(0x99);
        LCD_WR_DATAX(0x00);
        LCD_WR_DATAX(0xBB);
        LCD_WR_DATAX(0x00);
        LCD_WR_DATAX(0x99);
        LCD_WR_DATAX(0x00);
        LCD_WR_DATAX(0x77);
        LCD_WR_DATAX(0x00);
        LCD_WR_DATAX(0x44);
        LCD_WR_DATAX(0x00);
        LCD_WR_DATAX(0x56);
        LCD_WR_DATAX(0x00);
        LCD_WR_DATAX(0x23);
        LCD_WR_DATAX(0x00);
        LCD_WR_DATAX(0x33);
        LCD_WR_DATAX(0x00);
        LCD_WR_DATAX(0x45);
        LCD_WR_DATAX(0x00);

        LCD_WR_REG(0xE8);
        LCD_WR_DATAX(0x00);
        LCD_WR_DATAX(0x00);
        LCD_WR_DATAX(0x99);
        LCD_WR_DATAX(0x00);
        LCD_WR_DATAX(0x87);
        LCD_WR_DATAX(0x00);
        LCD_WR_DATAX(0x88);
        LCD_WR_DATAX(0x00);
        LCD_WR_DATAX(0x77);
        LCD_WR_DATAX(0x00);
        LCD_WR_DATAX(0x66);
        LCD_WR_DATAX(0x00);
        LCD_WR_DATAX(0x88);
        LCD_WR_DATAX(0x00);
        LCD_WR_DATAX(0xAA);
        LCD_WR_DATAX(0x00);
        LCD_WR_DATAX(0xBB);
        LCD_WR_DATAX(0x00);
        LCD_WR_DATAX(0x99);
        LCD_WR_DATAX(0x00);
        LCD_WR_DATAX(0x66);
        LCD_WR_DATAX(0x00);
        LCD_WR_DATAX(0x55);
        LCD_WR_DATAX(0x00);
        LCD_WR_DATAX(0x55);
        LCD_WR_DATAX(0x00);
        LCD_WR_DATAX(0x44);
        LCD_WR_DATAX(0x00);
        LCD_WR_DATAX(0x44);
        LCD_WR_DATAX(0x00);
        LCD_WR_DATAX(0x55);
        LCD_WR_DATAX(0x00);

        LCD_WR_REG(0xE9);
        LCD_WR_DATAX(0xAA);
        LCD_WR_DATAX(0x00);
        LCD_WR_DATAX(0x00);
        LCD_WR_DATAX(0x00);

        LCD_WR_REG(0x00);
        LCD_WR_DATAX(0xAA);

        LCD_WR_REG(0xCF);
        LCD_WR_DATAX(0x00);
        LCD_WR_DATAX(0x00);
        LCD_WR_DATAX(0x00);
        LCD_WR_DATAX(0x00);
        LCD_WR_DATAX(0x00);
        LCD_WR_DATAX(0x00);
        LCD_WR_DATAX(0x00);
        LCD_WR_DATAX(0x00);
        LCD_WR_DATAX(0x00);
        LCD_WR_DATAX(0x00);
        LCD_WR_DATAX(0x00);
        LCD_WR_DATAX(0x00);
        LCD_WR_DATAX(0x00);
        LCD_WR_DATAX(0x00);
        LCD_WR_DATAX(0x00);
        LCD_WR_DATAX(0x00);
        LCD_WR_DATAX(0x00);

        LCD_WR_REG(0xF0);
        LCD_WR_DATAX(0x00);
        LCD_WR_DATAX(0x50);
        LCD_WR_DATAX(0x00);
        LCD_WR_DATAX(0x00);
        LCD_WR_DATAX(0x00);

        LCD_WR_REG(0xF3);
        LCD_WR_DATAX(0x00);

        LCD_WR_REG(0xF9);
        LCD_WR_DATAX(0x06);
        LCD_WR_DATAX(0x10);
        LCD_WR_DATAX(0x29);
        LCD_WR_DATAX(0x00);

        LCD_WR_REG(0x3A);
        LCD_WR_DATAX(0x55);	//66

        LCD_WR_REG(0x11);
        delay_ms(100);
        LCD_WR_REG(0x29);
        LCD_WR_REG(0x35);
        LCD_WR_DATAX(0x00);

        LCD_WR_REG(0x51);
        LCD_WR_DATAX(0xFF);
        LCD_WR_REG(0x53);
        LCD_WR_DATAX(0x2C);
        LCD_WR_REG(0x55);
        LCD_WR_DATAX(0x82);
        LCD_WR_REG(0x2c);
    }
    else if (lcddev.id == 0x5510)
    {
        LCD_WriteReg(0xF000, 0x55);
        LCD_WriteReg(0xF001, 0xAA);
        LCD_WriteReg(0xF002, 0x52);
        LCD_WriteReg(0xF003, 0x08);
        LCD_WriteReg(0xF004, 0x01);
        //AVDD Set AVDD 5.2V
        LCD_WriteReg(0xB000, 0x0D);
        LCD_WriteReg(0xB001, 0x0D);
        LCD_WriteReg(0xB002, 0x0D);
        //AVDD ratio
        LCD_WriteReg(0xB600, 0x34);
        LCD_WriteReg(0xB601, 0x34);
        LCD_WriteReg(0xB602, 0x34);
        //AVEE -5.2V
        LCD_WriteReg(0xB100, 0x0D);
        LCD_WriteReg(0xB101, 0x0D);
        LCD_WriteReg(0xB102, 0x0D);
        //AVEE ratio
        LCD_WriteReg(0xB700, 0x34);
        LCD_WriteReg(0xB701, 0x34);
        LCD_WriteReg(0xB702, 0x34);
        //VCL -2.5V
        LCD_WriteReg(0xB200, 0x00);
        LCD_WriteReg(0xB201, 0x00);
        LCD_WriteReg(0xB202, 0x00);
        //VCL ratio
        LCD_WriteReg(0xB800, 0x24);
        LCD_WriteReg(0xB801, 0x24);
        LCD_WriteReg(0xB802, 0x24);
        //VGH 15V (Free pump)
        LCD_WriteReg(0xBF00, 0x01);
        LCD_WriteReg(0xB300, 0x0F);
        LCD_WriteReg(0xB301, 0x0F);
        LCD_WriteReg(0xB302, 0x0F);
        //VGH ratio
        LCD_WriteReg(0xB900, 0x34);
        LCD_WriteReg(0xB901, 0x34);
        LCD_WriteReg(0xB902, 0x34);
        //VGL_REG -10V
        LCD_WriteReg(0xB500, 0x08);
        LCD_WriteReg(0xB501, 0x08);
        LCD_WriteReg(0xB502, 0x08);
        LCD_WriteReg(0xC200, 0x03);
        //VGLX ratio
        LCD_WriteReg(0xBA00, 0x24);
        LCD_WriteReg(0xBA01, 0x24);
        LCD_WriteReg(0xBA02, 0x24);
        //VGMP/VGSP 4.5V/0V
        LCD_WriteReg(0xBC00, 0x00);
        LCD_WriteReg(0xBC01, 0x78);
        LCD_WriteReg(0xBC02, 0x00);
        //VGMN/VGSN -4.5V/0V
        LCD_WriteReg(0xBD00, 0x00);
        LCD_WriteReg(0xBD01, 0x78);
        LCD_WriteReg(0xBD02, 0x00);
        //VCOM
        LCD_WriteReg(0xBE00, 0x00);
        LCD_WriteReg(0xBE01, 0x64);
        //Gamma Setting
        LCD_WriteReg(0xD100, 0x00);
        LCD_WriteReg(0xD101, 0x33);
        LCD_WriteReg(0xD102, 0x00);
        LCD_WriteReg(0xD103, 0x34);
        LCD_WriteReg(0xD104, 0x00);
        LCD_WriteReg(0xD105, 0x3A);
        LCD_WriteReg(0xD106, 0x00);
        LCD_WriteReg(0xD107, 0x4A);
        LCD_WriteReg(0xD108, 0x00);
        LCD_WriteReg(0xD109, 0x5C);
        LCD_WriteReg(0xD10A, 0x00);
        LCD_WriteReg(0xD10B, 0x81);
        LCD_WriteReg(0xD10C, 0x00);
        LCD_WriteReg(0xD10D, 0xA6);
        LCD_WriteReg(0xD10E, 0x00);
        LCD_WriteReg(0xD10F, 0xE5);
        LCD_WriteReg(0xD110, 0x01);
        LCD_WriteReg(0xD111, 0x13);
        LCD_WriteReg(0xD112, 0x01);
        LCD_WriteReg(0xD113, 0x54);
        LCD_WriteReg(0xD114, 0x01);
        LCD_WriteReg(0xD115, 0x82);
        LCD_WriteReg(0xD116, 0x01);
        LCD_WriteReg(0xD117, 0xCA);
        LCD_WriteReg(0xD118, 0x02);
        LCD_WriteReg(0xD119, 0x00);
        LCD_WriteReg(0xD11A, 0x02);
        LCD_WriteReg(0xD11B, 0x01);
        LCD_WriteReg(0xD11C, 0x02);
        LCD_WriteReg(0xD11D, 0x34);
        LCD_WriteReg(0xD11E, 0x02);
        LCD_WriteReg(0xD11F, 0x67);
        LCD_WriteReg(0xD120, 0x02);
        LCD_WriteReg(0xD121, 0x84);
        LCD_WriteReg(0xD122, 0x02);
        LCD_WriteReg(0xD123, 0xA4);
        LCD_WriteReg(0xD124, 0x02);
        LCD_WriteReg(0xD125, 0xB7);
        LCD_WriteReg(0xD126, 0x02);
        LCD_WriteReg(0xD127, 0xCF);
        LCD_WriteReg(0xD128, 0x02);
        LCD_WriteReg(0xD129, 0xDE);
        LCD_WriteReg(0xD12A, 0x02);
        LCD_WriteReg(0xD12B, 0xF2);
        LCD_WriteReg(0xD12C, 0x02);
        LCD_WriteReg(0xD12D, 0xFE);
        LCD_WriteReg(0xD12E, 0x03);
        LCD_WriteReg(0xD12F, 0x10);
        LCD_WriteReg(0xD130, 0x03);
        LCD_WriteReg(0xD131, 0x33);
        LCD_WriteReg(0xD132, 0x03);
        LCD_WriteReg(0xD133, 0x6D);
        LCD_WriteReg(0xD200, 0x00);
        LCD_WriteReg(0xD201, 0x33);
        LCD_WriteReg(0xD202, 0x00);
        LCD_WriteReg(0xD203, 0x34);
        LCD_WriteReg(0xD204, 0x00);
        LCD_WriteReg(0xD205, 0x3A);
        LCD_WriteReg(0xD206, 0x00);
        LCD_WriteReg(0xD207, 0x4A);
        LCD_WriteReg(0xD208, 0x00);
        LCD_WriteReg(0xD209, 0x5C);
        LCD_WriteReg(0xD20A, 0x00);

        LCD_WriteReg(0xD20B, 0x81);
        LCD_WriteReg(0xD20C, 0x00);
        LCD_WriteReg(0xD20D, 0xA6);
        LCD_WriteReg(0xD20E, 0x00);
        LCD_WriteReg(0xD20F, 0xE5);
        LCD_WriteReg(0xD210, 0x01);
        LCD_WriteReg(0xD211, 0x13);
        LCD_WriteReg(0xD212, 0x01);
        LCD_WriteReg(0xD213, 0x54);
        LCD_WriteReg(0xD214, 0x01);
        LCD_WriteReg(0xD215, 0x82);
        LCD_WriteReg(0xD216, 0x01);
        LCD_WriteReg(0xD217, 0xCA);
        LCD_WriteReg(0xD218, 0x02);
        LCD_WriteReg(0xD219, 0x00);
        LCD_WriteReg(0xD21A, 0x02);
        LCD_WriteReg(0xD21B, 0x01);
        LCD_WriteReg(0xD21C, 0x02);
        LCD_WriteReg(0xD21D, 0x34);
        LCD_WriteReg(0xD21E, 0x02);
        LCD_WriteReg(0xD21F, 0x67);
        LCD_WriteReg(0xD220, 0x02);
        LCD_WriteReg(0xD221, 0x84);
        LCD_WriteReg(0xD222, 0x02);
        LCD_WriteReg(0xD223, 0xA4);
        LCD_WriteReg(0xD224, 0x02);
        LCD_WriteReg(0xD225, 0xB7);
        LCD_WriteReg(0xD226, 0x02);
        LCD_WriteReg(0xD227, 0xCF);
        LCD_WriteReg(0xD228, 0x02);
        LCD_WriteReg(0xD229, 0xDE);
        LCD_WriteReg(0xD22A, 0x02);
        LCD_WriteReg(0xD22B, 0xF2);
        LCD_WriteReg(0xD22C, 0x02);
        LCD_WriteReg(0xD22D, 0xFE);
        LCD_WriteReg(0xD22E, 0x03);
        LCD_WriteReg(0xD22F, 0x10);
        LCD_WriteReg(0xD230, 0x03);
        LCD_WriteReg(0xD231, 0x33);
        LCD_WriteReg(0xD232, 0x03);
        LCD_WriteReg(0xD233, 0x6D);
        LCD_WriteReg(0xD300, 0x00);
        LCD_WriteReg(0xD301, 0x33);
        LCD_WriteReg(0xD302, 0x00);
        LCD_WriteReg(0xD303, 0x34);
        LCD_WriteReg(0xD304, 0x00);
        LCD_WriteReg(0xD305, 0x3A);
        LCD_WriteReg(0xD306, 0x00);
        LCD_WriteReg(0xD307, 0x4A);
        LCD_WriteReg(0xD308, 0x00);
        LCD_WriteReg(0xD309, 0x5C);
        LCD_WriteReg(0xD30A, 0x00);

        LCD_WriteReg(0xD30B, 0x81);
        LCD_WriteReg(0xD30C, 0x00);
        LCD_WriteReg(0xD30D, 0xA6);
        LCD_WriteReg(0xD30E, 0x00);
        LCD_WriteReg(0xD30F, 0xE5);
        LCD_WriteReg(0xD310, 0x01);
        LCD_WriteReg(0xD311, 0x13);
        LCD_WriteReg(0xD312, 0x01);
        LCD_WriteReg(0xD313, 0x54);
        LCD_WriteReg(0xD314, 0x01);
        LCD_WriteReg(0xD315, 0x82);
        LCD_WriteReg(0xD316, 0x01);
        LCD_WriteReg(0xD317, 0xCA);
        LCD_WriteReg(0xD318, 0x02);
        LCD_WriteReg(0xD319, 0x00);
        LCD_WriteReg(0xD31A, 0x02);
        LCD_WriteReg(0xD31B, 0x01);
        LCD_WriteReg(0xD31C, 0x02);
        LCD_WriteReg(0xD31D, 0x34);
        LCD_WriteReg(0xD31E, 0x02);
        LCD_WriteReg(0xD31F, 0x67);
        LCD_WriteReg(0xD320, 0x02);
        LCD_WriteReg(0xD321, 0x84);
        LCD_WriteReg(0xD322, 0x02);
        LCD_WriteReg(0xD323, 0xA4);
        LCD_WriteReg(0xD324, 0x02);
        LCD_WriteReg(0xD325, 0xB7);
        LCD_WriteReg(0xD326, 0x02);
        LCD_WriteReg(0xD327, 0xCF);
        LCD_WriteReg(0xD328, 0x02);
        LCD_WriteReg(0xD329, 0xDE);
        LCD_WriteReg(0xD32A, 0x02);
        LCD_WriteReg(0xD32B, 0xF2);
        LCD_WriteReg(0xD32C, 0x02);
        LCD_WriteReg(0xD32D, 0xFE);
        LCD_WriteReg(0xD32E, 0x03);
        LCD_WriteReg(0xD32F, 0x10);
        LCD_WriteReg(0xD330, 0x03);
        LCD_WriteReg(0xD331, 0x33);
        LCD_WriteReg(0xD332, 0x03);
        LCD_WriteReg(0xD333, 0x6D);
        LCD_WriteReg(0xD400, 0x00);
        LCD_WriteReg(0xD401, 0x33);
        LCD_WriteReg(0xD402, 0x00);
        LCD_WriteReg(0xD403, 0x34);
        LCD_WriteReg(0xD404, 0x00);
        LCD_WriteReg(0xD405, 0x3A);
        LCD_WriteReg(0xD406, 0x00);
        LCD_WriteReg(0xD407, 0x4A);
        LCD_WriteReg(0xD408, 0x00);
        LCD_WriteReg(0xD409, 0x5C);
        LCD_WriteReg(0xD40A, 0x00);
        LCD_WriteReg(0xD40B, 0x81);

        LCD_WriteReg(0xD40C, 0x00);
        LCD_WriteReg(0xD40D, 0xA6);
        LCD_WriteReg(0xD40E, 0x00);
        LCD_WriteReg(0xD40F, 0xE5);
        LCD_WriteReg(0xD410, 0x01);
        LCD_WriteReg(0xD411, 0x13);
        LCD_WriteReg(0xD412, 0x01);
        LCD_WriteReg(0xD413, 0x54);
        LCD_WriteReg(0xD414, 0x01);
        LCD_WriteReg(0xD415, 0x82);
        LCD_WriteReg(0xD416, 0x01);
        LCD_WriteReg(0xD417, 0xCA);
        LCD_WriteReg(0xD418, 0x02);
        LCD_WriteReg(0xD419, 0x00);
        LCD_WriteReg(0xD41A, 0x02);
        LCD_WriteReg(0xD41B, 0x01);
        LCD_WriteReg(0xD41C, 0x02);
        LCD_WriteReg(0xD41D, 0x34);
        LCD_WriteReg(0xD41E, 0x02);
        LCD_WriteReg(0xD41F, 0x67);
        LCD_WriteReg(0xD420, 0x02);
        LCD_WriteReg(0xD421, 0x84);
        LCD_WriteReg(0xD422, 0x02);
        LCD_WriteReg(0xD423, 0xA4);
        LCD_WriteReg(0xD424, 0x02);
        LCD_WriteReg(0xD425, 0xB7);
        LCD_WriteReg(0xD426, 0x02);
        LCD_WriteReg(0xD427, 0xCF);
        LCD_WriteReg(0xD428, 0x02);
        LCD_WriteReg(0xD429, 0xDE);
        LCD_WriteReg(0xD42A, 0x02);
        LCD_WriteReg(0xD42B, 0xF2);
        LCD_WriteReg(0xD42C, 0x02);
        LCD_WriteReg(0xD42D, 0xFE);
        LCD_WriteReg(0xD42E, 0x03);
        LCD_WriteReg(0xD42F, 0x10);
        LCD_WriteReg(0xD430, 0x03);
        LCD_WriteReg(0xD431, 0x33);
        LCD_WriteReg(0xD432, 0x03);
        LCD_WriteReg(0xD433, 0x6D);
        LCD_WriteReg(0xD500, 0x00);
        LCD_WriteReg(0xD501, 0x33);
        LCD_WriteReg(0xD502, 0x00);
        LCD_WriteReg(0xD503, 0x34);
        LCD_WriteReg(0xD504, 0x00);
        LCD_WriteReg(0xD505, 0x3A);
        LCD_WriteReg(0xD506, 0x00);
        LCD_WriteReg(0xD507, 0x4A);
        LCD_WriteReg(0xD508, 0x00);
        LCD_WriteReg(0xD509, 0x5C);
        LCD_WriteReg(0xD50A, 0x00);
        LCD_WriteReg(0xD50B, 0x81);

        LCD_WriteReg(0xD50C, 0x00);
        LCD_WriteReg(0xD50D, 0xA6);
        LCD_WriteReg(0xD50E, 0x00);
        LCD_WriteReg(0xD50F, 0xE5);
        LCD_WriteReg(0xD510, 0x01);
        LCD_WriteReg(0xD511, 0x13);
        LCD_WriteReg(0xD512, 0x01);
        LCD_WriteReg(0xD513, 0x54);
        LCD_WriteReg(0xD514, 0x01);
        LCD_WriteReg(0xD515, 0x82);
        LCD_WriteReg(0xD516, 0x01);
        LCD_WriteReg(0xD517, 0xCA);
        LCD_WriteReg(0xD518, 0x02);
        LCD_WriteReg(0xD519, 0x00);
        LCD_WriteReg(0xD51A, 0x02);
        LCD_WriteReg(0xD51B, 0x01);
        LCD_WriteReg(0xD51C, 0x02);
        LCD_WriteReg(0xD51D, 0x34);
        LCD_WriteReg(0xD51E, 0x02);
        LCD_WriteReg(0xD51F, 0x67);
        LCD_WriteReg(0xD520, 0x02);
        LCD_WriteReg(0xD521, 0x84);
        LCD_WriteReg(0xD522, 0x02);
        LCD_WriteReg(0xD523, 0xA4);
        LCD_WriteReg(0xD524, 0x02);
        LCD_WriteReg(0xD525, 0xB7);
        LCD_WriteReg(0xD526, 0x02);
        LCD_WriteReg(0xD527, 0xCF);
        LCD_WriteReg(0xD528, 0x02);
        LCD_WriteReg(0xD529, 0xDE);
        LCD_WriteReg(0xD52A, 0x02);
        LCD_WriteReg(0xD52B, 0xF2);
        LCD_WriteReg(0xD52C, 0x02);
        LCD_WriteReg(0xD52D, 0xFE);
        LCD_WriteReg(0xD52E, 0x03);
        LCD_WriteReg(0xD52F, 0x10);
        LCD_WriteReg(0xD530, 0x03);
        LCD_WriteReg(0xD531, 0x33);
        LCD_WriteReg(0xD532, 0x03);
        LCD_WriteReg(0xD533, 0x6D);
        LCD_WriteReg(0xD600, 0x00);
        LCD_WriteReg(0xD601, 0x33);
        LCD_WriteReg(0xD602, 0x00);
        LCD_WriteReg(0xD603, 0x34);
        LCD_WriteReg(0xD604, 0x00);
        LCD_WriteReg(0xD605, 0x3A);
        LCD_WriteReg(0xD606, 0x00);
        LCD_WriteReg(0xD607, 0x4A);
        LCD_WriteReg(0xD608, 0x00);
        LCD_WriteReg(0xD609, 0x5C);
        LCD_WriteReg(0xD60A, 0x00);
        LCD_WriteReg(0xD60B, 0x81);

        LCD_WriteReg(0xD60C, 0x00);
        LCD_WriteReg(0xD60D, 0xA6);
        LCD_WriteReg(0xD60E, 0x00);
        LCD_WriteReg(0xD60F, 0xE5);
        LCD_WriteReg(0xD610, 0x01);
        LCD_WriteReg(0xD611, 0x13);
        LCD_WriteReg(0xD612, 0x01);
        LCD_WriteReg(0xD613, 0x54);
        LCD_WriteReg(0xD614, 0x01);
        LCD_WriteReg(0xD615, 0x82);
        LCD_WriteReg(0xD616, 0x01);
        LCD_WriteReg(0xD617, 0xCA);
        LCD_WriteReg(0xD618, 0x02);
        LCD_WriteReg(0xD619, 0x00);
        LCD_WriteReg(0xD61A, 0x02);
        LCD_WriteReg(0xD61B, 0x01);
        LCD_WriteReg(0xD61C, 0x02);
        LCD_WriteReg(0xD61D, 0x34);
        LCD_WriteReg(0xD61E, 0x02);
        LCD_WriteReg(0xD61F, 0x67);
        LCD_WriteReg(0xD620, 0x02);
        LCD_WriteReg(0xD621, 0x84);
        LCD_WriteReg(0xD622, 0x02);
        LCD_WriteReg(0xD623, 0xA4);
        LCD_WriteReg(0xD624, 0x02);
        LCD_WriteReg(0xD625, 0xB7);
        LCD_WriteReg(0xD626, 0x02);
        LCD_WriteReg(0xD627, 0xCF);
        LCD_WriteReg(0xD628, 0x02);
        LCD_WriteReg(0xD629, 0xDE);
        LCD_WriteReg(0xD62A, 0x02);
        LCD_WriteReg(0xD62B, 0xF2);
        LCD_WriteReg(0xD62C, 0x02);
        LCD_WriteReg(0xD62D, 0xFE);
        LCD_WriteReg(0xD62E, 0x03);
        LCD_WriteReg(0xD62F, 0x10);
        LCD_WriteReg(0xD630, 0x03);
        LCD_WriteReg(0xD631, 0x33);
        LCD_WriteReg(0xD632, 0x03);
        LCD_WriteReg(0xD633, 0x6D);
        //LV2 Page 0 enable
        LCD_WriteReg(0xF000, 0x55);
        LCD_WriteReg(0xF001, 0xAA);
        LCD_WriteReg(0xF002, 0x52);
        LCD_WriteReg(0xF003, 0x08);
        LCD_WriteReg(0xF004, 0x00);
        //Display control
        LCD_WriteReg(0xB100, 0xCC);
        LCD_WriteReg(0xB101, 0x00);
        //Source hold time
        LCD_WriteReg(0xB600, 0x05);
        //Gate EQ control
        LCD_WriteReg(0xB700, 0x70);
        LCD_WriteReg(0xB701, 0x70);
        //Source EQ control (Mode 2)
        LCD_WriteReg(0xB800, 0x01);
        LCD_WriteReg(0xB801, 0x03);
        LCD_WriteReg(0xB802, 0x03);
        LCD_WriteReg(0xB803, 0x03);
        //Inversion mode (2-dot)
        LCD_WriteReg(0xBC00, 0x02);
        LCD_WriteReg(0xBC01, 0x00);
        LCD_WriteReg(0xBC02, 0x00);
        //Timing control 4H w/ 4-delay
        LCD_WriteReg(0xC900, 0xD0);
        LCD_WriteReg(0xC901, 0x02);
        LCD_WriteReg(0xC902, 0x50);
        LCD_WriteReg(0xC903, 0x50);
        LCD_WriteReg(0xC904, 0x50);
        LCD_WriteReg(0x3500, 0x00);
        LCD_WriteReg(0x3A00, 0x55); //16-bit/pixel
        LCD_WR_REG(0x1100);
        delay_us(120);
        LCD_WR_REG(0x2900);
    }
    else if (lcddev.id == 0X1963)
    {
        LCD_WR_REG(0xE2);       //Set PLL with OSC = 10MHz (hardware),	Multiplier N = 35, 250MHz < VCO < 800MHz = OSC*(N+1), VCO = 300MHz
        LCD_WR_DATA(0x1D);      //����1
        LCD_WR_DATA(0x02);      //����2 Divider M = 2, PLL = 300/(M+1) = 100MHz
        LCD_WR_DATA(0x04);      //����3 Validate M and N values
        delay_us(100);
        LCD_WR_REG(0xE0);       // Start PLL command
        LCD_WR_DATA(0x01);      // enable PLL
        delay_ms(10);
        LCD_WR_REG(0xE0);       // Start PLL command again
        LCD_WR_DATA(0x03);      // now, use PLL output as system clock
        delay_ms(12);
        LCD_WR_REG(0x01);       //��λ
        delay_ms(10);

        LCD_WR_REG(0xE6);       //��������Ƶ��,33Mhz
        LCD_WR_DATA(0x2F);
        LCD_WR_DATA(0xFF);
        LCD_WR_DATA(0xFF);

        LCD_WR_REG(0xB0);       //����LCDģʽ
        LCD_WR_DATA(0x20);      //24λģʽ
        LCD_WR_DATA(0x00);      //TFT ģʽ

        LCD_WR_DATA((SSD_HOR_RESOLUTION - 1) >> 8); //����LCDˮƽ����
        LCD_WR_DATA(SSD_HOR_RESOLUTION - 1);
        LCD_WR_DATA((SSD_VER_RESOLUTION - 1) >> 8); //����LCD��ֱ����
        LCD_WR_DATA(SSD_VER_RESOLUTION - 1);
        LCD_WR_DATA(0x00);      //RGB����

        LCD_WR_REG(0xB4);       //Set horizontal period
        LCD_WR_DATA((SSD_HT - 1) >> 8);
        LCD_WR_DATA(SSD_HT - 1);
        LCD_WR_DATA(SSD_HPS >> 8);
        LCD_WR_DATA(SSD_HPS);
        LCD_WR_DATA(SSD_HOR_PULSE_WIDTH - 1);
        LCD_WR_DATA(0x00);
        LCD_WR_DATA(0x00);
        LCD_WR_DATA(0x00);
        LCD_WR_REG(0xB6);       //Set vertical period
        LCD_WR_DATA((SSD_VT - 1) >> 8);
        LCD_WR_DATA(SSD_VT - 1);
        LCD_WR_DATA(SSD_VPS >> 8);
        LCD_WR_DATA(SSD_VPS);
        LCD_WR_DATA(SSD_VER_FRONT_PORCH - 1);
        LCD_WR_DATA(0x00);
        LCD_WR_DATA(0x00);

        LCD_WR_REG(0xF0);       //����SSD1963��CPU�ӿ�Ϊ16bit
        LCD_WR_DATA(0x03);      //16-bit(565 format) data for 16bpp

        LCD_WR_REG(0x29);       //������ʾ
        //����PWM���  ����ͨ��ռ�ձȿɵ�
        LCD_WR_REG(0xD0);       //�����Զ���ƽ��DBC
        LCD_WR_DATA(0x00);      //disable

        LCD_WR_REG(0xBE);       //����PWM���
        LCD_WR_DATA(0x05);      //1����PWMƵ��
        LCD_WR_DATA(0xFE);      //2����PWMռ�ձ�
        LCD_WR_DATA(0x01);      //3����C
        LCD_WR_DATA(0x00);      //4����D
        LCD_WR_DATA(0x00);      //5����E
        LCD_WR_DATA(0x00);      //6����F

        LCD_WR_REG(0xB8);       //����GPIO����
        LCD_WR_DATA(0x03);      //2��IO�����ó����
        LCD_WR_DATA(0x01);      //GPIOʹ��������IO����
        LCD_WR_REG(0xBA);
        LCD_WR_DATA(0X01);      //GPIO[1:0]=01,����LCD����

        LCD_SSD_BackLightSet(100);//��������Ϊ����
    }
    
    LCD_Display_Dir(0);         //Ĭ��Ϊ����
    LCD_LED = 1;                //��������
    LCD_Clear(WHITE);
}
  
//��������
//color:Ҫ���������ɫ
void LCD_Clear(u16 color)
{
    u32 index = 0;
    u32 totalpoint = lcddev.width;
    totalpoint *= lcddev.height;    //�õ��ܵ���

    LCD_SetCursor(0x00, 0x0000);    //���ù��λ��
    LCD_WriteRAM_Prepare();         //��ʼд��GRAM

    for (index = 0; index < totalpoint; index++)
    {
        LCD_WR_DATA(color);
    }
}

//��ָ�����������ָ����ɫ
//�����С:(xend-xsta+1)*(yend-ysta+1)
//xsta
//color:Ҫ������ɫ
void LCD_Fill(u16 sx,u16 sy,u16 ex,u16 ey,u16 color)
{
    u16 i, j;
    u16 xlen = 0;

    xlen = ex - sx + 1;

    for (i = sy; i <= ey; i++)
    {
        LCD_SetCursor(sx, i);       //���ù��λ��
        LCD_WriteRAM_Prepare();     //��ʼд��GRAM

        for (j = 0; j < xlen; j++)
        {
            LCD_WR_DATA(color);     //���ù��λ��
        }
    }
}

//��ָ�����������ָ����ɫ��
//(sx,sy),(ex,ey):�����ζԽ�����,�����СΪ:(ex-sx+1)*(ey-sy+1)
//color:Ҫ������ɫ
void LCD_Color_Fill(u16 sx,u16 sy,u16 ex,u16 ey,u16 *color)
{
    u16 height, width;
    u16 i, j;
    width = ex - sx + 1;            //�õ����Ŀ��
    height = ey - sy + 1;           //�߶�

    for (i = 0; i < height; i++)
    {
        LCD_SetCursor(sx, sy + i);  //���ù��λ��
        LCD_WriteRAM_Prepare();     //��ʼд��GRAM

        for (j = 0; j < width; j++)
        {
            LCD_WR_DATA(color[i * width + j]); //д������
        }
    }
}

//����
//x1,y1:�������
//x2,y2:�յ�����  
void LCD_DrawLine(u16 x1, u16 y1, u16 x2, u16 y2)
{
    u16 t;
    int xerr = 0, yerr = 0, delta_x, delta_y, distance;
    int incx, incy, uRow, uCol;
    delta_x = x2 - x1;              //������������
    delta_y = y2 - y1;
    uRow = x1;
    uCol = y1;

    if (delta_x > 0)incx = 1;       //���õ�������
    else if (delta_x == 0)incx = 0; //��ֱ��
    else
    {
        incx = -1;
        delta_x = -delta_x;
    }

    if (delta_y > 0)incy = 1;
    else if (delta_y == 0)incy = 0; //ˮƽ��
    else
    {
        incy = -1;
        delta_y = -delta_y;
    }

    if ( delta_x > delta_y)distance = delta_x; //ѡȡ��������������
    else distance = delta_y;

    for (t = 0; t <= distance + 1; t++ )    //�������
    {
        LCD_DrawPoint(uRow, uCol); //����
        xerr += delta_x ;
        yerr += delta_y ;

        if (xerr > distance)
        {
            xerr -= distance;
            uRow += incx;
        }

        if (yerr > distance)
        {
            yerr -= distance;
            uCol += incy;
        }
    }
}

//������
//(x1,y1),(x2,y2):���εĶԽ�����
void LCD_DrawRectangle(u16 x1, u16 y1, u16 x2, u16 y2)
{
    LCD_DrawLine(x1, y1, x2, y1);
    LCD_DrawLine(x1, y1, x1, y2);
    LCD_DrawLine(x1, y2, x2, y2);
    LCD_DrawLine(x2, y1, x2, y2);
}

//��ָ��λ�û�һ��ָ����С��Բ
//(x,y):���ĵ�
//r    :�뾶
void LCD_Draw_Circle(u16 x0,u16 y0,u8 r)
{
    int a, b;
    int di;
    a = 0;
    b = r;
    di = 3 - (r << 1);       //�ж��¸���λ�õı�־

    while (a <= b)
    {
        LCD_DrawPoint(x0 + a, y0 - b);        //5
        LCD_DrawPoint(x0 + b, y0 - a);        //0
        LCD_DrawPoint(x0 + b, y0 + a);        //4
        LCD_DrawPoint(x0 + a, y0 + b);        //6
        LCD_DrawPoint(x0 - a, y0 + b);        //1
        LCD_DrawPoint(x0 - b, y0 + a);
        LCD_DrawPoint(x0 - a, y0 - b);        //2
        LCD_DrawPoint(x0 - b, y0 - a);        //7
        a++;

        //ʹ��Bresenham�㷨��Բ
        if (di < 0)di += 4 * a + 6;
        else
        {
            di += 10 + 4 * (a - b);
            b--;
        }
    }
}

//��ָ��λ����ʾһ���ַ�
//x,y:��ʼ����
//num:Ҫ��ʾ���ַ�:" "--->"~"
//size:�����С 12/16/24
//mode:���ӷ�ʽ(1)���Ƿǵ��ӷ�ʽ(0)
void LCD_ShowChar(u16 x,u16 y,u8 num,u8 size,u8 mode)
{
    u8 temp, t1, t;
    u16 y0 = y;
    u8 csize = (size / 8 + ((size % 8) ? 1 : 0)) * (size / 2);  //�õ�����һ���ַ���Ӧ������ռ���ֽ���
    num = num - ' ';    //�õ�ƫ�ƺ��ֵ��ASCII�ֿ��Ǵӿո�ʼȡģ������-' '���Ƕ�Ӧ�ַ����ֿ⣩

    for (t = 0; t < csize; t++)
    {
        if (size == 12)temp = asc2_1206[num][t];        //����1206����
        else if (size == 16)temp = asc2_1608[num][t];   //����1608����
        else if (size == 24)temp = asc2_2412[num][t];   //����2412����
        else return;                                    //û�е��ֿ�

        for (t1 = 0; t1 < 8; t1++)
        {
            if (temp & 0x80)LCD_Fast_DrawPoint(x, y, POINT_COLOR);
            else if (mode == 0)LCD_Fast_DrawPoint(x, y, BACK_COLOR);

            temp <<= 1;
            y++;

            if (y >= lcddev.height)return;      //��������

            if ((y - y0) == size)
            {
                y = y0;
                x++;

                if (x >= lcddev.width)return;   //��������

                break;
            }
        }
    } 
}

//m^n����
//����ֵ:m^n�η�.
u32 LCD_Pow(u8 m,u8 n)
{
    u32 result=1;
    while(n--)result*=m;    
    return result;
}

//��ʾ����,��λΪ0,����ʾ
//x,y :�������	 
//len :���ֵ�λ��
//size:�����С
//color:��ɫ 
//num:��ֵ(0~4294967295);
void LCD_ShowNum(u16 x,u16 y,u32 num,u8 len,u8 size)
{
    u8 t, temp;
    u8 enshow = 0;

    for (t = 0; t < len; t++)
    {
        temp = (num / LCD_Pow(10, len - t - 1)) % 10;

        if (enshow == 0 && t < (len - 1))
        {
            if (temp == 0)
            {
                LCD_ShowChar(x + (size / 2)*t, y, ' ', size, 0);
                continue;
            }
            else enshow = 1;

        }

        LCD_ShowChar(x + (size / 2)*t, y, temp + '0', size, 0);
    }
}

//��ʾ����,��λΪ0,������ʾ
//x,y:�������
//num:��ֵ(0~999999999);
//len:����(��Ҫ��ʾ��λ��)
//size:�����С
//mode:
//[7]:0,�����;1,���0.
//[6:1]:����
//[0]:0,�ǵ�����ʾ;1,������ʾ.
void LCD_ShowxNum(u16 x,u16 y,u32 num,u8 len,u8 size,u8 mode)
{  
    u8 t, temp;
    u8 enshow = 0;

    for (t = 0; t < len; t++)
    {
        temp = (num / LCD_Pow(10, len - t - 1)) % 10;

        if (enshow == 0 && t < (len - 1))
        {
            if (temp == 0)
            {
                if (mode & 0X80)LCD_ShowChar(x + (size / 2)*t, y, '0', size, mode & 0X01);
                else LCD_ShowChar(x + (size / 2)*t, y, ' ', size, mode & 0X01);

                continue;
            }
            else enshow = 1;

        }

        LCD_ShowChar(x + (size / 2)*t, y, temp + '0', size, mode & 0X01);
    }
}

//��ʾ�ַ���
//x,y:�������
//width,height:�����С
//size:�����С
//*p:�ַ�����ʼ��ַ
void LCD_ShowString(u16 x,u16 y,u16 width,u16 height,u8 size,u8 *p)
{         
    u8 x0 = x;
    width += x;
    height += y;

    while ((*p <= '~') && (*p >= ' '))   //�ж��ǲ��ǷǷ��ַ�!
    {
        if (x >= width)
        {
            x = x0;
            y += size;
        }

        if (y >= height)break; //�˳�

        LCD_ShowChar(x, y, *p, size, 0);
        x += size / 2;
        p++;
    }
}

void LCD_ShowImage(uint16_t x, uint16_t y) {
	uint8_t temp, t1, t, k;
	uint16_t y0 = y;
	int mode = 0;
	int size = 58;

	for (k = 0; k < 78; k++) {
		for (t = 0; t < 58; t++) {
			temp = warning_img[k * 58 + t];
			if (temp & 0x80)
				LCD_Fast_DrawPoint(x, y, POINT_COLOR);
			else if (mode == 0)
				LCD_Fast_DrawPoint(x, y, BACK_COLOR);
			temp <<= 1;
			y++;
			if (y >= lcddev.height)
				return;		//超区域了
			if ((y - y0) == size) {
				y = y0;
				x++;
				if (x >= lcddev.width)
					return;	//超区域了
				break;
			}
		}
	}
}

void LCD_ShowImage2(uint16_t x, uint16_t y) {
	uint8_t temp, t, k;
	uint16_t y0 = y;
	int mode = 0;
	int size = 150;

	for (k = 0; k < 150; k++) {
		for (t = 0; t < 150; t++) {
			temp = warning_img2[k * 150 + t];
			if (temp & 0x80)
				LCD_Fast_DrawPoint(x, y, POINT_COLOR);
			else if (mode == 0)
				LCD_Fast_DrawPoint(x, y, BACK_COLOR);
			temp <<= 1;
			y++;
			if (y >= lcddev.height)
				return;		//超区域了
			if ((y - y0) == size) {
				y = y0;
				x++;
				if (x >= lcddev.width)
					return;	//超区域了
				break;
			}
		}
	}
}

void LCD_ShowEndImage(uint16_t xstr, uint16_t ystr) {

	uint16_t xend = xstr + 48;
	uint16_t yend = ystr + 48;
	uint8_t *pic = endpicture;
	uint8_t temp,t1;
	uint16_t x_t=xstr,y_t=ystr;//,x=xstr,y=ystr;
	uint8_t *pusMsk = pic;//480000 65536
	for(y_t=ystr;y_t<yend;)
	{
			temp = *pusMsk;
			for(t1=0;t1<8;t1++)
			{
				if(temp&0x80)LCD_Fast_DrawPoint(x_t,y_t,POINT_COLOR);//画实心点
				else LCD_Fast_DrawPoint(x_t,y_t,BACK_COLOR);   //画空白点（使用背景色）
				temp<<=1;
				x_t++;
				if(x_t>=xend)
				{
					x_t=xstr;
					y_t++;
					break;
				}
			}
			pusMsk++;
	}

}


void LCD_ShowInputWrongImage(uint16_t xstr,uint16_t ystr) {

	uint16_t xend = xstr + 90;
	uint16_t yend = ystr + 55;
	uint8_t *pic = InputWrongPicture;
	uint8_t temp,t1;
	uint16_t x_t=xstr,y_t=ystr;//,x=xstr,y=ystr;
	uint8_t *pusMsk = pic;//480000 65536
	for(y_t=ystr;y_t<yend;)
	{
			temp = *pusMsk;
			for(t1=0;t1<8;t1++)
			{
				if(temp&0x80)LCD_Fast_DrawPoint(x_t,y_t,POINT_COLOR);//画实心点
				else LCD_Fast_DrawPoint(x_t,y_t,BACK_COLOR);   //画空白点（使用背景色）
				temp<<=1;
				x_t++;
				if(x_t>=xend)
				{
					x_t=xstr;
					y_t++;
					break;
				}
			}
			pusMsk++;
	}
}





























