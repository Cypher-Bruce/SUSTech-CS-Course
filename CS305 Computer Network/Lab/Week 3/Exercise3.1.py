import requests
from bs4 import BeautifulSoup
import mimetypes
from urllib.parse import urljoin
from collections import Counter

def get_mime_type(url):
    try:
        response = requests.head(url, allow_redirects=True)  # Use HEAD request for efficiency
        if 'Content-Type' in response.headers:
            return response.headers['Content-Type'].split(';')[0]
        else:
            # Fallback to mimetypes module based on file extension
            mime_type, _ = mimetypes.guess_type(url)
            return mime_type
    except requests.RequestException as e:
        print(f"Error fetching MIME type for {url}: {e}")
        return None

def count_mime_types(url):
    response = requests.get(url)
    soup = BeautifulSoup(response.text, 'html.parser')
    
    # Find all file links
    links = soup.find_all('a', href=True)
    
    mime_counter = Counter()
    
    for link in links:
        file_url = urljoin(url, link['href'])  # Ensure full URL
        print(file_url)
        mime_type = get_mime_type(file_url)
        
        if mime_type:
            mime_counter[mime_type] += 1
    
    return mime_counter

# Example usage
url = "https://www.sustech.edu.cn"  # Replace with the URL you want to scan
mime_type_counts = count_mime_types(url)

# Print MIME type counts
for mime_type, count in mime_type_counts.items():
    print(f"{mime_type}: {count}")
