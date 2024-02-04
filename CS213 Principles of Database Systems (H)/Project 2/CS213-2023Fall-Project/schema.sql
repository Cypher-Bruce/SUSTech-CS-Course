CREATE table "user" (
    mid bigint,
    name text not null,
    sex char(1) not null,
    birthday date,
    level smallint not null,
    coins int not null,
    sign text,
    identity char(1) not null,
    password text not null,
    qq text,
    wechat text,
    is_deleted boolean not null default false
);

create table video (
    bv varchar(20),
    title text not null,
    owner bigint not null,
    commit_time timestamp not null,
    public_time timestamp,
    duration numeric not null,
    description text,
    reviewer bigint,
    review_time timestamp,
    is_deleted boolean not null default false
);

create table danmu (
    id bigserial,
    bv varchar(20) not null,
    mid bigint not null,
    time numeric not null,
    content text not null,
    post_time timestamp not null,
    is_deleted boolean not null default false
);

create table user_follow (
    follower bigint not null,
    followed bigint not null,
    is_deleted boolean not null default false
);

create table user_like_video (
    mid bigint not null,
    bv varchar(20) not null,
    is_deleted boolean not null default false
);

create table user_collect_video (
    mid bigint not null,
    bv varchar(20) not null,
    is_deleted boolean not null default false
);

create table user_watch_video (
    mid bigint not null,
    bv varchar(20) not null,
    view_time numeric not null,
    is_deleted boolean not null default false
);

create table user_coin_video (
    mid bigint not null,
    bv varchar(20) not null,
    is_deleted boolean not null default false
);

create table user_like_danmu (
    mid bigint not null,
    id bigint not null,
    is_deleted boolean not null default false
);

alter table "user" add constraint pk_user primary key (mid);
alter table video add constraint pk_video primary key (bv);
alter table danmu add constraint pk_danmu primary key (id);
alter table user_follow add constraint pk_user_follow primary key (follower, followed);
alter table user_like_video add constraint pk_user_like_video primary key (mid, bv);
alter table user_collect_video add constraint pk_user_collect_video primary key (mid, bv);
alter table user_watch_video add constraint pk_user_watch_video primary key (mid, bv);
alter table user_coin_video add constraint pk_user_coin_video primary key (mid, bv);
alter table user_like_danmu add constraint pk_user_like_danmu primary key (mid, id);
create index idx_user_like_video_mid_bv on user_like_video(mid, bv) where is_deleted = false;
create index idx_user_like_video_bv on user_like_video(bv) where is_deleted = false;
create index idx_danmu_id on danmu(id) where is_deleted = false;
create index idx_danmu_bv_time on danmu(bv, time) where is_deleted = false;
create index idx_danmu_mid on danmu(mid) where is_deleted = false;
create index idx_user_like_danmu_mid_id on user_like_danmu(mid, id) where is_deleted = false;
create index idx_user_like_danmu_id on user_like_danmu(id) where is_deleted = false;
create index idx_video_bv on video(bv) where is_deleted = false;
create unique index uk_video_owner_title on video(owner, title) where is_deleted = false;
create index idx_user_mid on "user"(mid) where is_deleted = false;
create unique index uk_user_qq on "user"(qq) where is_deleted = false;
create unique index uk_user_wechat on "user"(wechat) where is_deleted = false;
create index idx_user_coin_video_mid_bv_idx on user_coin_video(mid, bv) where is_deleted = false;
create index idx_user_coin_video_bv_idx on user_coin_video(bv) where is_deleted = false;
create index idx_user_collect_video_mid_bv on user_collect_video(mid, bv) where is_deleted = false;
create index idx_user_collect_video_bv on user_collect_video(bv) where is_deleted = false;
create index idx_user_follow_follower_followed on user_follow(follower, followed) where is_deleted = false;
create index idx_user_follow_followed on user_follow(followed) where is_deleted = false;
create index idx_user_watch_video_mid_bv on user_watch_video(mid, bv) where is_deleted = false;
create index idx_user_watch_video_bv_idx on user_watch_video(bv) where is_deleted = false;


create view videos_visible as select * from video where is_deleted = false;
create view danmus_visible as select * from danmu where is_deleted = false;
create view users_visible as select * from "user" where is_deleted = false;
create view user_follow_visible as select * from user_follow where is_deleted = false;
create view user_like_video_visible as select * from user_like_video where is_deleted = false;
create view user_collect_video_visible as select * from user_collect_video where is_deleted = false;
create view user_watch_video_visible as select * from user_watch_video where is_deleted = false;
create view user_coin_video_visible as select * from user_coin_video where is_deleted = false;
create view user_like_danmu_visible as select * from user_like_danmu where is_deleted = false;

-- user service

CREATE OR REPLACE FUNCTION validateAuthInfo(authMid BIGINT, authPassword TEXT, authQq TEXT, authWechat TEXT)
RETURNS BIGINT
AS $$
DECLARE
    hasMid BOOLEAN;
    hasPassword BOOLEAN;
    hasQQ BOOLEAN;
    hasWechat BOOLEAN;
    qqMid BIGINT;
    wechatMid BIGINT;
    passwordText TEXT;
    qqText TEXT;
    wechatText TEXT;
BEGIN
    -- check if the auth info provides mid, password, qq, wechat
    IF authMid <= 0 THEN
        hasMid := FALSE;
    ELSE
        hasMid := TRUE;
    END IF;
    IF authPassword IS NULL OR length(authPassword) = 0 THEN
        hasPassword := FALSE;
    ELSE
        hasPassword := TRUE;
    END IF;
    IF authQq IS NULL OR length(authQq) = 0 THEN
        hasQQ := FALSE;
    ELSE
        hasQQ := TRUE;
    END IF;
    IF authWechat IS NULL OR length(authWechat) = 0 THEN
        hasWechat := FALSE;
    ELSE
        hasWechat := TRUE;
    END IF;

    -- if the user provides mid, try to find the user's password, qq, wechat
    IF hasMid THEN
        SELECT
            u.password, u.qq, u.wechat
        INTO
            passwordText, qqText, wechatText
        FROM
            users_visible u
        WHERE
            u.mid = authMid;

        IF passwordText IS NULL THEN
            RETURN -1;  -- cannot find a user with the given mid
        END IF;

        -- validate by mid and password
        IF hasPassword THEN
            IF passwordText = authPassword THEN
                RETURN authMid;
            ELSE
                RETURN -1;  -- password not match
            END IF;
        END IF;

        -- validate by mid and (qq or wechat)
        IF hasQQ OR hasWechat THEN
            IF hasQQ AND hasWechat THEN
                IF qqText IS NOT NULL AND wechatText IS NOT NULL AND qqText = authQq AND wechatText = authWechat THEN
                    RETURN authMid;
                ELSE
                    RETURN -1;  -- qq or wechat not match
                END IF;
            ELSEIF hasQQ THEN
                IF qqText IS NOT NULL AND qqText = authQq THEN
                    RETURN authMid;
                ELSE
                    RETURN -1;  -- qq not match
                END IF;
            ELSE
                IF wechatText IS NOT NULL AND wechatText = authWechat THEN
                    RETURN authMid;
                ELSE
                    RETURN -1;  -- wechat not match
                END IF;
            END IF;
        END IF;

        RETURN -1;  -- if the user has mid, but the password, qq, wechat are all not provided, it's invalid
    END IF;

    -- validate by qq or wechat without mid (if mid is not provided, can't validate by password)
    IF hasQQ OR hasWechat THEN
        -- if the user has qq or wechat, try to find the user by qq or wechat
        IF hasQQ THEN
            SELECT
                u.mid
            INTO
                qqMid
            FROM
                users_visible u
            WHERE
                u.qq = authQq;
        END IF;
        IF hasWechat THEN
            SELECT
                u.mid
            INTO
                wechatMid
            FROM
                users_visible u
            WHERE
                u.wechat = authWechat;
        END IF;

        IF hasQQ AND hasWechat THEN
            IF qqMid IS NULL OR wechatMid IS NULL THEN
                RETURN -1;  -- cannot find a user with the given qq or wechat
            ELSEIF qqMid = wechatMid THEN
                RETURN qqMid;
            ELSE
                RETURN -1;  -- qq and wechat not match
            END IF;
        ELSEIF hasQQ THEN
            IF qqMid IS NULL THEN
                RETURN -1;  -- cannot find a user with the given qq
            ELSE
                RETURN qqMid;
            END IF;
        ELSE
            IF wechatMid IS NULL THEN
                RETURN -1;  -- cannot find a user with the given wechat
            ELSE
                RETURN wechatMid;
            END IF;
        END IF;
    END IF;

    -- if auth info don't have qq and wechat and mid, it's invalid
    RETURN -1;
END
$$ LANGUAGE plpgsql;

CREATE OR REPLACE FUNCTION getUserInfo(authMid BIGINT)
RETURNS table(
    coins INT,
    followings BIGINT[],
    followers BIGINT[],
    watchedVideos VARCHAR(20)[],
    likedVideos VARCHAR(20)[],
    collectedVideos VARCHAR(20)[],
    postedVideos VARCHAR(20)[]
) AS $$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM users_visible u WHERE u.mid = authMid) THEN
        RETURN;
    END IF;

    RETURN QUERY
    SELECT
        (
            SELECT
                u.coins
            FROM
                users_visible u
            WHERE
                u.mid = authMid
        ),
        array(
            SELECT
                uf.followed
            FROM
                user_follow_visible uf
            WHERE
                uf.follower = authMid
        ),
        array(
            SELECT
                uf.follower
            FROM
                user_follow_visible uf
            WHERE
                uf.followed = authMid
        ),
        array(
            SELECT
                uw.bv
            FROM
                user_watch_video_visible uw
            WHERE
                uw.mid = authMid
        ),
        array(
            SELECT
                ul.bv
            FROM
                user_like_video_visible ul
            WHERE
                ul.mid = authMid
        ),
        array(
            SELECT
                uc.bv
            FROM
                user_collect_video_visible uc
            WHERE
                uc.mid = authMid
        ),
        array(
            SELECT
                v.bv
            FROM
                videos_visible v
            WHERE
                v.owner = authMid
        );
END
$$ LANGUAGE plpgsql;

CREATE OR REPLACE FUNCTION follow(authMid BIGINT, authPassword TEXT, authQq TEXT, authWechat TEXT, followeeMid BIGINT)
RETURNS BOOLEAN
AS $$
DECLARE
    authMidValid BIGINT;
    currentStatus BOOLEAN;
BEGIN
    authMidValid := validateAuthInfo(authMid, authPassword, authQq, authWechat);
    IF authMidValid <= 0 THEN
        RETURN FALSE;
    END IF;

    IF authMidValid = followeeMid THEN
        RETURN FALSE;
    END IF;

    IF NOT EXISTS(SELECT 1 FROM users_visible u WHERE u.mid = followeeMid) THEN
        RETURN FALSE;
    END IF;

    SELECT is_deleted INTO currentStatus FROM user_follow WHERE follower = authMidValid AND followed = followeeMid;

    IF currentStatus IS NULL THEN
        INSERT INTO user_follow(follower, followed) VALUES(authMidValid, followeeMid);
        RETURN TRUE;
    ELSE
        UPDATE user_follow SET is_deleted = NOT currentStatus WHERE follower = authMidValid AND followed = followeeMid;
        RETURN currentStatus;
    END IF;
END
$$ LANGUAGE plpgsql;

CREATE OR REPLACE FUNCTION deleteAccount(authMid BIGINT, authPassword TEXT, authQq TEXT, authWechat TEXT, deleteMid BIGINT)
RETURNS BOOLEAN
AS $$
DECLARE
    authMidValid BIGINT;
    authIdentity CHAR(1);
    deleteIdentity CHAR(1);
    postedVideoBV VARCHAR(20)[];
BEGIN
    authMidValid := validateAuthInfo(authMid, authPassword, authQq, authWechat);
    IF authMidValid <= 0 THEN
        RETURN FALSE;
    END IF;

    SELECT u.identity INTO authIdentity FROM users_visible u WHERE u.mid = authMidValid;
    IF authIdentity IS NULL THEN
        RETURN FALSE;
    END IF;

    IF authIdentity = 'U' THEN
        IF authMidValid <> deleteMid THEN
            RETURN FALSE;
        END IF;

        postedVideoBV := array(SELECT v.bv FROM videos_visible v WHERE v.owner = deleteMid);

        UPDATE user_follow_visible SET is_deleted = true WHERE follower = deleteMid OR followed = deleteMid;

        UPDATE user_watch_video_visible SET is_deleted = true WHERE mid = deleteMid;
        UPDATE user_like_video_visible SET is_deleted = true WHERE mid = deleteMid;
        UPDATE user_collect_video_visible SET is_deleted = true WHERE mid = deleteMid;
        UPDATE user_coin_video_visible SET is_deleted = true WHERE mid = deleteMid;

        IF postedVideoBV IS NOT NULL THEN
            UPDATE user_watch_video_visible SET is_deleted = true WHERE bv = ANY(postedVideoBV);
            UPDATE user_like_video_visible SET is_deleted = true WHERE bv = ANY(postedVideoBV);
            UPDATE user_collect_video_visible SET is_deleted = true WHERE bv = ANY(postedVideoBV);
            UPDATE user_coin_video_visible SET is_deleted = true WHERE bv = ANY(postedVideoBV);
            UPDATE user_like_danmu_visible SET is_deleted = true WHERE id in (SELECT id FROM danmus_visible WHERE bv = ANY(postedVideoBV));
            UPDATE danmus_visible SET is_deleted = true WHERE bv = ANY(postedVideoBV);
        END IF;

        UPDATE user_like_danmu_visible SET is_deleted = true WHERE id in (SELECT id FROM danmus_visible WHERE mid = deleteMid);
        UPDATE user_like_danmu_visible SET is_deleted = true WHERE mid = deleteMid;

        UPDATE danmus_visible SET is_deleted = true WHERE mid = deleteMid;

        UPDATE videos_visible SET is_deleted = true WHERE owner = deleteMid;

        UPDATE users_visible SET is_deleted = true WHERE mid = deleteMid;

        RETURN TRUE;
    END IF;

    SELECT u.identity INTO deleteIdentity FROM users_visible u WHERE u.mid = deleteMid;

    IF deleteIdentity = 'S' AND deleteMid <> authMidValid THEN
        RETURN FALSE;
    END IF;

        postedVideoBV := array(SELECT v.bv FROM videos_visible v WHERE v.owner = deleteMid);

        UPDATE user_follow_visible SET is_deleted = true WHERE follower = deleteMid OR followed = deleteMid;

        UPDATE user_watch_video_visible SET is_deleted = true WHERE mid = deleteMid;
        UPDATE user_like_video_visible SET is_deleted = true WHERE mid = deleteMid;
        UPDATE user_collect_video_visible SET is_deleted = true WHERE mid = deleteMid;
        UPDATE user_coin_video_visible SET is_deleted = true WHERE mid = deleteMid;

        IF postedVideoBV IS NOT NULL THEN
            UPDATE user_watch_video_visible SET is_deleted = true WHERE bv = ANY(postedVideoBV);
            UPDATE user_like_video_visible SET is_deleted = true WHERE bv = ANY(postedVideoBV);
            UPDATE user_collect_video_visible SET is_deleted = true WHERE bv = ANY(postedVideoBV);
            UPDATE user_coin_video_visible SET is_deleted = true WHERE bv = ANY(postedVideoBV);
            UPDATE user_like_danmu_visible SET is_deleted = true WHERE id in (SELECT id FROM danmus_visible WHERE bv = ANY(postedVideoBV));
            UPDATE danmus_visible SET is_deleted = true WHERE bv = ANY(postedVideoBV);
        END IF;

        UPDATE user_like_danmu_visible SET is_deleted = true WHERE id in (SELECT id FROM danmus_visible WHERE mid = deleteMid);
        UPDATE user_like_danmu_visible SET is_deleted = true WHERE mid = deleteMid;

        UPDATE danmus_visible SET is_deleted = true WHERE mid = deleteMid;

        UPDATE videos_visible SET is_deleted = true WHERE owner = deleteMid;

        UPDATE users_visible SET is_deleted = true WHERE mid = deleteMid;

        UPDATE videos_visible SET reviewer = null WHERE reviewer = deleteMid;

    RETURN TRUE;
END
$$ LANGUAGE plpgsql;

CREATE OR REPLACE FUNCTION register(in_password text, in_qq text, in_wechat text, in_name text, in_sex char(1), in_birthday text, in_sign text)
RETURNS BIGINT
AS $$
DECLARE
    currentMaxMid BIGINT;
BEGIN
    SELECT max(mid) INTO currentMaxMid FROM "user";
    INSERT INTO "user" (mid, name, sex, birthday, level, coins, sign, identity, password, qq, wechat)
    VALUES (currentMaxMid + 1, in_name, in_sex, to_date(in_birthday, 'MM月DD日'), 1, 0, in_sign, 'U', in_password, CASE WHEN in_qq = '' THEN null ELSE in_qq END, CASE WHEN in_wechat = '' THEN null ELSE in_wechat END);
    RETURN currentMaxMid + 1;
END
$$ LANGUAGE plpgsql;

-- danmu service

CREATE OR REPLACE FUNCTION likeDanmu(authMid BIGINT, authPassword TEXT, authQq TEXT, authWechat TEXT, danmuId BIGINT)
RETURNS BOOLEAN
AS $$
DECLARE
    authMidValid BIGINT;
    currentStatus BOOLEAN;
BEGIN
    authMidValid := validateAuthInfo(authMid, authPassword, authQq, authWechat);
    IF authMidValid <= 0 THEN
        RETURN FALSE;
    END IF;

    IF NOT EXISTS(SELECT 1 FROM user_watch_video_visible uw WHERE uw.mid = authMidValid AND uw.bv = (SELECT bv FROM danmus_visible d WHERE d.id = danmuId)) THEN
        RETURN FALSE;
    END IF;

    SELECT is_deleted INTO currentStatus FROM user_like_danmu WHERE mid = authMidValid AND id = danmuId;

    IF currentStatus IS NULL THEN
        INSERT INTO user_like_danmu(mid, id) VALUES (authMidValid, danmuId);
        RETURN TRUE;
    ELSE
        UPDATE user_like_danmu SET is_deleted = NOT currentStatus WHERE mid = authMidValid AND id = danmuId;
        RETURN currentStatus;
    END IF;
END
$$ LANGUAGE plpgsql;

CREATE OR REPLACE FUNCTION displayDanmu(videoBV VARCHAR(20), startTime REAL, endTime REAL, filter BOOLEAN)
RETURNS BIGINT[]
AS $$
DECLARE
    duration NUMERIC;
    publicTime TIMESTAMP;
    reviewTime TIMESTAMP;
BEGIN
    SELECT v.duration, v.public_time, v.review_time INTO duration, publicTime, reviewTime FROM videos_visible v WHERE v.bv = videoBV;
    IF duration IS NULL OR endTime > duration THEN
        RETURN null;
    END IF;
    IF reviewTime IS NULL THEN
        RETURN null;
    end if;
    IF publicTime > now() THEN
        RETURN null;
    END IF;

    IF FILTER = true THEN
        RETURN array(
            SELECT
                id
            FROM (
                SELECT
                    DISTINCT ON (content) id, time
                FROM
                    danmus_visible
                WHERE
                    bv = videoBV AND time >= startTime AND time <= endTime
                ORDER BY
                    content, post_time
                ) AS t
            ORDER BY
                time
        );
    ELSE
        RETURN array(
            SELECT
                id
            FROM
                danmus_visible
            WHERE
                bv = videoBV AND time >= startTime AND time <= endTime
            ORDER BY
                time
        );
    END IF;
END
$$ LANGUAGE plpgsql;

CREATE OR REPLACE FUNCTION sendDanmu(authMid BIGINT, authPassword TEXT, authQq TEXT, authWechat TEXT, BV_in VARCHAR(20), content_in TEXT, time_in REAL)
RETURNS BIGINT
AS $$
DECLARE
    authMidValid BIGINT;
    duration NUMERIC;
    reviewTime TIMESTAMP;
    publicTime TIMESTAMP;
    danmuId BIGINT;
BEGIN
    SELECT v.duration, v.public_time, v.review_time INTO duration, publicTime, reviewTime FROM videos_visible v WHERE v.bv = BV_in;
    IF duration IS NULL OR time_in > duration THEN
        RETURN -1;
    END IF;
    IF reviewTime IS NULL THEN
        RETURN -1;
    end if;
    IF publicTime > now() THEN
        RETURN -1;
    END IF;

    authMidValid := validateAuthInfo(authMid, authPassword, authQq, authWechat);
    IF authMidValid <= 0 THEN
        RETURN -1;
    END IF;

    IF NOT EXISTS(SELECT 1 FROM user_watch_video_visible uw WHERE uw.mid = authMidValid AND uw.bv = BV_in) THEN
        RETURN -1;
    END IF;

    INSERT INTO danmu(bv, mid, time, content, post_time) VALUES(BV_in, authMidValid, time_in, content_in, now()) RETURNING id INTO danmuId;
    RETURN danmuId;
END
$$ LANGUAGE plpgsql;

-- video service

CREATE OR REPLACE FUNCTION deleteVideo(authMid BIGINT, authPassword TEXT, authQq TEXT, authWechat TEXT, videoBV VARCHAR(20))
RETURNS BOOLEAN
AS $$
DECLARE
    authMidValid BIGINT;
    ownerMid BIGINT;
    authIdentity CHAR(1);
BEGIN
    authMidValid := validateAuthInfo(authMid, authPassword, authQq, authWechat);
    IF authMidValid <= 0 THEN
        RETURN FALSE;
    END IF;
    SELECT u.identity INTO authIdentity FROM users_visible u WHERE u.mid = authMidValid;
    SELECT v.owner INTO ownerMid FROM videos_visible v WHERE v.bv = videoBV;
    IF ownerMid IS NULL OR (authIdentity = 'U' AND ownerMid <> authMidValid) THEN
        RETURN FALSE;
    END IF;

    UPDATE
        user_like_danmu_visible
    SET
        is_deleted = true
    WHERE
        id IN (
            SELECT
                d.id
            FROM
                danmus_visible d
            WHERE
                d.bv = videoBV
        );

    UPDATE
        danmus_visible
    SET
        is_deleted = true
    WHERE
        bv = videoBV;

    UPDATE
        user_watch_video_visible
    SET
        is_deleted = true
    WHERE
        bv = videoBV;

    UPDATE
        user_coin_video_visible
    SET
        is_deleted = true
    WHERE
        bv = videoBV;

    UPDATE
        user_like_video_visible
    SET
        is_deleted = true
    WHERE
        bv = videoBV;

    UPDATE
       user_collect_video_visible
    SET
        is_deleted = true
    WHERE
        bv = videoBV;

    UPDATE
        videos_visible
    SET
        is_deleted = true
    WHERE
        bv = videoBV;
    RETURN TRUE;
END
$$ LANGUAGE plpgsql;

CREATE OR REPLACE FUNCTION reviewVideo(authMid BIGINT, authPassword TEXT, authQq TEXT, authWechat TEXT, videoBV VARCHAR(20))
RETURNS BOOLEAN
AS $$
DECLARE
    authMidValid BIGINT;
    authIdentity CHAR(1);
    ownerMid BIGINT;
    reviewTime TIMESTAMP;
BEGIN
    SELECT v.owner, v.review_time INTO ownerMid, reviewTime FROM videos_visible v WHERE v.bv = videoBV;
    IF ownerMid IS NULL OR reviewTime IS NOT NULL THEN
        RETURN FALSE;
    END IF;

    authMidValid := validateAuthInfo(authMid, authPassword, authQq, authWechat);
    IF authMidValid <= 0 OR authMidValid = ownerMid THEN
        RETURN FALSE;
    END IF;

    SELECT u.identity INTO authIdentity FROM users_visible u WHERE u.mid = authMidValid;
    IF authIdentity = 'U' THEN
        RETURN FALSE;
    END IF;

    UPDATE video SET reviewer = authMidValid, review_time = now() WHERE bv = videoBV;
    RETURN TRUE;
END
$$ LANGUAGE plpgsql;

CREATE OR REPLACE FUNCTION updateVideoInfo(authMid BIGINT, authPassword TEXT, authQq TEXT, authWechat TEXT, videoBV VARCHAR(20), title_in TEXT, duration_in REAL, description_in TEXT, publicTime_in TIMESTAMP)
RETURNS BOOLEAN
AS $$
DECLARE
    authMidValid BIGINT;
    ownerMid BIGINT;
    title TEXT;
    duration NUMERIC;
    description TEXT;
    publicTime TIMESTAMP;
    reviewTime TIMESTAMP;
BEGIN
    authMidValid := validateAuthInfo(authMid, authPassword, authQq, authWechat);
    IF authMidValid <= 0 THEN
        RETURN FALSE;
    END IF;

    SELECT v.owner, v.title, v.duration, v.description, v.public_time, v.review_time INTO ownerMid, title, duration, description, publicTime, reviewTime FROM videos_visible v WHERE v.bv = videoBV;
    IF ownerMid IS NULL OR ownerMid <> authMidValid THEN
        RETURN FALSE;
    END IF;
    IF duration <> duration_in THEN
        RETURN FALSE;
    END IF;
    IF title = title_in AND ((description IS NULL AND description_in IS NULL) OR description = description_in) AND publicTime = publicTime_in THEN
        RETURN FALSE;
    END IF;

    UPDATE video SET title = title_in, description = description_in, public_time = publicTime_in, review_time = null, reviewer = null WHERE bv = videoBV;
    IF reviewTime IS NULL THEN
        RETURN FALSE;
    ELSE
        RETURN TRUE;
    END IF;
END
$$ LANGUAGE plpgsql;

CREATE OR REPLACE FUNCTION postVideo(authMid BIGINT, authPassword TEXT, authQq TEXT, authWechat TEXT, title_in TEXT, duration_in REAL, description_in TEXT, publicTime_in TIMESTAMP)
RETURNS VARCHAR(20)
AS $$
DECLARE
    authMidValid BIGINT;
    randomNum INT;
    newBV VARCHAR(20);
BEGIN
    authMidValid := validateAuthInfo(authMid, authPassword, authQq, authWechat);
    IF authMidValid <= 0 THEN
        RETURN null;
    END IF;

    WHILE true LOOP
        randomNum := floor(random() * 1000000000);
        newBV := 'BV' || substr(md5(randomNum::text), 1, 18);
        IF NOT EXISTS(SELECT 1 FROM videos_visible v WHERE v.bv = newBV) THEN
            EXIT;
        END IF;
    END LOOP;

    INSERT INTO video (bv, title, owner, commit_time, public_time, duration, description, reviewer, review_time)
    VALUES(newBV, title_in, authMidValid, now(), publicTime_in, duration_in, description_in, null, null);
    RETURN newBV;
END
$$ LANGUAGE plpgsql;

CREATE OR REPLACE FUNCTION getAverageViewRate(in_bv varchar(20))
RETURNS NUMERIC
AS $$
DECLARE
    vDuration NUMERIC;
    vWatchCount BIGINT;
    vWatchTimeCount NUMERIC;
BEGIN
    SELECT duration INTO vDuration FROM videos_visible WHERE bv = in_bv;
    IF vDuration IS NULL THEN
        RETURN -1;
    END IF;

    SELECT COUNT(mid), SUM(view_time) INTO vWatchCount, vWatchTimeCount FROM user_watch_video_visible WHERE bv = in_bv;
    IF vWatchCount = 0 THEN
        RETURN -1;
    END IF;
    RETURN vWatchTimeCount / vDuration / vWatchCount;
END
$$ LANGUAGE plpgsql;

CREATE OR REPLACE FUNCTION getHotSpot(bv_in VARCHAR(20))
RETURNS INT[]
AS $$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM videos_visible WHERE bv = bv_in) THEN
        RETURN null;
    END IF;

    RETURN array(
        SELECT cast(new_time as INTEGER) AS hot_spots
        FROM (SELECT floor(time / 10)       AS new_time,
                     COUNT(id)              AS cnt,
                     MAX(COUNT(id)) OVER () AS max_cnt
              FROM danmus_visible
              WHERE bv = bv_in
              GROUP BY new_time
              ORDER BY COUNT(id) desc) AS t
        WHERE cnt = max_cnt
    );
END
$$ LANGUAGE plpgsql;

CREATE OR REPLACE FUNCTION coinVideo(authMid BIGINT, authPassword TEXT, authQq TEXT, authWechat TEXT, videoBV VARCHAR(20))
RETURNS BOOLEAN
AS $$
DECLARE
    authMidValid BIGINT;
    authIdentity CHAR(1);
    ownerMid BIGINT;
    publicTime TIMESTAMP;
    reviewTime TIMESTAMP;
    authCoins INT;
BEGIN
    SELECT v.owner, v.public_time, v.review_time INTO ownerMid, publicTime, reviewTime FROM videos_visible v WHERE v.bv = videoBV;
    IF ownerMid IS NULL THEN
        RETURN FALSE;
    END IF;

    authMidValid := validateAuthInfo(authMid, authPassword, authQq, authWechat);
    IF authMidValid <= 0 OR ownerMid = authMidValid THEN
        RETURN FALSE;
    END IF;

    SELECT u.identity, u.coins INTO authIdentity, authCoins FROM users_visible u WHERE u.mid = authMidValid;
    IF authCoins = 0 THEN
        RETURN FALSE;
    END IF;
    IF authIdentity = 'U' AND (reviewTime IS NULL OR publicTime > now()) THEN
        RETURN FALSE;
    END IF;

    IF EXISTS(SELECT 1 FROM user_coin_video uc WHERE uc.mid = authMidValid AND uc.bv = videoBV) THEN
        RETURN FALSE;
    ELSE
        UPDATE "user" SET coins = coins - 1 WHERE mid = authMidValid;
        INSERT INTO user_coin_video(mid, bv) VALUES (authMidValid, videoBV);
        RETURN TRUE;
    END IF;
END
$$ LANGUAGE plpgsql;

CREATE OR REPLACE FUNCTION likeVideo(authMid BIGINT, authPassword TEXT, authQq TEXT, authWechat TEXT, videoBV VARCHAR(20))
RETURNS BOOLEAN
AS $$
DECLARE
    authMidValid BIGINT;
    authIdentity CHAR(1);
    ownerMid BIGINT;
    publicTime TIMESTAMP;
    reviewTime TIMESTAMP;
    currentStatus BOOLEAN;
BEGIN
    SELECT v.owner, v.public_time, v.review_time INTO ownerMid, publicTime, reviewTime FROM videos_visible v WHERE v.bv = videoBV;
    IF ownerMid IS NULL THEN
        RETURN FALSE;
    END IF;

    authMidValid := validateAuthInfo(authMid, authPassword, authQq, authWechat);
    IF authMidValid <= 0 OR ownerMid = authMidValid THEN
        RETURN FALSE;
    END IF;

    SELECT u.identity INTO authIdentity FROM users_visible u WHERE u.mid = authMidValid;
    IF authIdentity = 'U' AND (reviewTime IS NULL OR publicTime > now()) THEN
        RETURN FALSE;
    END IF;

    SELECT is_deleted INTO currentStatus FROM user_like_video WHERE mid = authMidValid AND bv = videoBV;

    IF currentStatus IS NULL THEN
        INSERT INTO user_like_video(mid, bv) VALUES(authMidValid, videoBV);
        RETURN TRUE;
    ELSE
        UPDATE user_like_video SET is_deleted = NOT currentStatus WHERE mid = authMidValid AND bv = videoBV;
        RETURN currentStatus;
    END IF;
END
$$ LANGUAGE plpgsql;

CREATE OR REPLACE FUNCTION collectVideo(authMid BIGINT, authPassword TEXT, authQq TEXT, authWechat TEXT, videoBV VARCHAR(20))
RETURNS BOOLEAN
AS $$
DECLARE
    authMidValid BIGINT;
    authIdentity CHAR(1);
    ownerMid BIGINT;
    publicTime TIMESTAMP;
    reviewTime TIMESTAMP;
    currentStatus BOOLEAN;
BEGIN
    SELECT v.owner, v.public_time, v.review_time INTO ownerMid, publicTime, reviewTime FROM videos_visible v WHERE v.bv = videoBV;
    IF ownerMid IS NULL THEN
        RETURN FALSE;
    END IF;

    authMidValid := validateAuthInfo(authMid, authPassword, authQq, authWechat);
    IF authMidValid <= 0 OR ownerMid = authMidValid THEN
        RETURN FALSE;
    END IF;

    SELECT u.identity INTO authIdentity FROM users_visible u WHERE u.mid = authMidValid;
    IF authIdentity = 'U' AND (reviewTime IS NULL OR publicTime > now()) THEN
        RETURN FALSE;
    END IF;

    SELECT is_deleted INTO currentStatus FROM user_collect_video WHERE mid = authMidValid AND bv = videoBV;

    IF currentStatus IS NULL THEN
        INSERT INTO user_collect_video(mid, bv) VALUES(authMidValid, videoBV);
        RETURN TRUE;
    ELSE
        UPDATE user_collect_video SET is_deleted = NOT currentStatus WHERE mid = authMidValid AND bv = videoBV;
        RETURN currentStatus;
    END IF;
END
$$ LANGUAGE plpgsql;

CREATE OR REPLACE FUNCTION searchVideo(authMid BIGINT, authPassword TEXT, authQq TEXT, authWechat TEXT, keywords TEXT[], pageSize INT, pageNum INT)
RETURNS VARCHAR(20)[]
AS $$
DECLARE
    authMidValid BIGINT;
    authIdentity CHAR(1);
    dynamicSQL TEXT := '';
    result VARCHAR(20)[];
BEGIN
    authMidValid := validateAuthInfo(authMid, authPassword, authQq, authWechat);
    IF authMidValid <= 0 THEN
        RETURN null;
    END IF;

    SELECT u.identity INTO authIdentity FROM users_visible u WHERE u.mid = authMidValid;

    FOR i IN 1..array_length(keywords, 1) LOOP
        -- dynamicSQL := dynamicSQL || 'coalesce(regexp_count(v.title || '' '' || coalesce(v.description, '''') || '' '' || u.name, $1[' || i || '], 1, ''i''), 0) + ';
        dynamicSQL := dynamicSQL || 'regexp_count(v.title, $1[' || i || '], 1, ''i'') + regexp_count(coalesce(v.description, ''''), $1[' || i || '], 1, ''i'') + regexp_count(u.name, $1[' || i || '], 1, ''i'') + ';
    END LOOP;
    dynamicSQL := substr(dynamicSQL, 1, length(dynamicSQL) - 2);


    IF authIdentity = 'U' THEN
        dynamicSQL := format(
                'SELECT array_agg(bv) from
                (WITH user_visible_video AS (
                    SELECT
                        v.bv, v.title, v.description, v.owner
                    FROM
                        videos_visible v
                    WHERE
                        v.review_time is not null and v.public_time < now() or v.owner = %s
                )
                SELECT
                    match_count.bv
                FROM
                    (
                        SELECT
                            v.bv, ' || dynamicSQL || '
                            as full_match_count
                        FROM
                            user_visible_video v join users_visible u on v.owner = u.mid
                    ) AS match_count
                    JOIN
                    (
                        SELECT
                            count(mid) as watch_count, bv
                        FROM user_watch_video_visible
                        GROUP BY bv
                    ) AS w
                    ON
                        match_count.bv = w.bv
                WHERE
                    full_match_count > 0
                ORDER BY
                    full_match_count DESC, watch_count DESC
                LIMIT
                    %s
                OFFSET
                    %s) as t', authMidValid, pageSize, (pageNum - 1) * pageSize);
    ELSE
        dynamicSQL := format(
                'SELECT array_agg(bv) from
                (SELECT
                    match_count.bv
                FROM
                    (
                        SELECT
                            v.bv, ' || dynamicSQL || '
                            as full_match_count
                        FROM
                            videos_visible v join users_visible u on v.owner = u.mid
                    ) AS match_count
                    JOIN
                    (
                        SELECT
                            count(mid) as watch_count, bv
                        FROM user_watch_video_visible
                        GROUP BY bv
                    ) AS w
                    ON
                        match_count.bv = w.bv
                WHERE
                    full_match_count > 0
                ORDER BY
                    full_match_count DESC, watch_count DESC
                LIMIT
                    %s
                OFFSET
                    %s) as t', pageSize, (pageNum - 1) * pageSize);
    END IF;
    EXECUTE dynamicSQL USING keywords INTO result;
    RETURN result;
END
$$ LANGUAGE plpgsql;

-- recommend service

CREATE OR REPLACE FUNCTION recommendNextVideo(bv_in VARCHAR(20))
RETURNS VARCHAR(20)[]
AS $$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM videos_visible WHERE bv = bv_in) THEN
        RETURN null;
    END IF;

    RETURN array(
        SELECT
            bv
        FROM
            user_watch_video_visible
        WHERE
            mid in
            (
            SELECT
                mid
            FROM
                user_watch_video_visible
            WHERE
                bv = bv_in
            )
            AND bv != bv_in
        GROUP BY
            bv
        ORDER BY
            count(mid) DESC, bv ASC
        LIMIT 5
    );
END
$$ LANGUAGE plpgsql;

CREATE OR REPLACE FUNCTION generalRecommendations(pageSize INT, pageNum INT)
RETURNS VARCHAR(20)[]
AS $$
BEGIN
    RETURN array(
            SELECT
                video_statistic2.bv
            FROM
            (
            SELECT video_statistic1.bv,
                CASE
                    WHEN total_watch_cnt = 0 THEN 0
                    ELSE
                        CASE
                            WHEN total_like_cnt / total_watch_cnt::numeric > 1 THEN 1
                            ELSE total_like_cnt / total_watch_cnt::numeric
                        END
                END
                    AS like_rate,
                CASE
                    WHEN total_watch_cnt = 0 THEN 0
                    ELSE
                        CASE
                            WHEN total_coin_cnt / total_watch_cnt::numeric > 1 THEN 1
                            ELSE total_coin_cnt / total_watch_cnt::numeric
                        END
                END
                    AS coin_rate,
                CASE
                    WHEN total_watch_cnt = 0 THEN 0
                    ELSE
                        CASE
                             WHEN total_collect_cnt / total_watch_cnt::numeric > 1 THEN 1
                             ELSE total_collect_cnt / total_watch_cnt::numeric
                        END
                END
                    AS collect_rate,
                CASE
                    WHEN total_watch_cnt = 0 THEN 0
                    ELSE total_danmu_cnt / total_watch_cnt::numeric
                END
                    AS danmu_rate,
                CASE
                    WHEN total_watch_cnt = 0 THEN 0
                    ELSE total_watch_time / total_watch_cnt::numeric / duration
                END
                    AS watch_time_rate
                FROM
                    (
                    SELECT
                        videos_visible.bv,
                        duration,
                        coalesce(like_num, 0)    AS total_like_cnt,
                        coalesce(coin_num, 0)    AS total_coin_cnt,
                        coalesce(collect_num, 0) AS total_collect_cnt,
                        coalesce(danmu_num, 0)   AS total_danmu_cnt,
                        coalesce(watch_time, 0)  AS total_watch_time,
                        coalesce(watch_num, 0)   AS total_watch_cnt
                    FROM
                        videos_visible
                    LEFT OUTER JOIN
                        (
                        SELECT
                            bv, count(*) AS like_num
                        FROM
                            user_like_video_visible
                        GROUP BY
                            bv
                        ) AS like_table
                        ON videos_visible.bv = like_table.bv
                    LEFT OUTER JOIN
                        (
                        SELECT
                            bv, count(*) AS coin_num
                        FROM
                            user_coin_video_visible
                        GROUP BY
                            bv
                        ) AS coin_table
                        ON videos_visible.bv = coin_table.bv
                    LEFT OUTER JOIN
                        (
                        SELECT
                            bv, count(*) AS collect_num
                        FROM
                            user_collect_video_visible
                        GROUP BY
                            bv
                        ) AS collect_table
                        ON videos_visible.bv = collect_table.bv
                    LEFT OUTER JOIN
                        (
                        SELECT
                            bv, count(*) AS danmu_num
                        FROM
                            danmus_visible
                        GROUP BY
                            bv
                        ) AS danmu_table
                        ON videos_visible.bv = danmu_table.bv
                    LEFT OUTER JOIN
                        (
                        SELECT
                            bv, sum(view_time) AS watch_time, count(view_time) AS watch_num
                        FROM
                            user_watch_video_visible
                        GROUP BY
                            bv
                        ) AS watch_table
                        ON videos_visible.bv = watch_table.bv
                    ) AS video_statistic1
            ) AS video_statistic2
            ORDER BY
                video_statistic2.like_rate + video_statistic2.coin_rate + video_statistic2.collect_rate + video_statistic2.danmu_rate + video_statistic2.watch_time_rate DESC
            LIMIT
                pageSize
            OFFSET
                (pageNum - 1) * pageSize
    );
END
$$ LANGUAGE plpgsql;

CREATE OR REPLACE FUNCTION recommendVideosForUser(authMid BIGINT, authPassword TEXT, authQq TEXT, authWechat TEXT, pageSize INT, pageNum INT)
RETURNS VARCHAR(20)[]
AS $$
DECLARE
    authMidValid BIGINT;
    authIdentity CHAR(1);
    interestBVs VARCHAR(20)[];
    friends_mid BIGINT[];
BEGIN
    authMidValid := validateAuthInfo(authMid, authPassword, authQq, authWechat);
    IF authMidValid <= 0 THEN
        RETURN null;
    END IF;

    SELECT u.identity INTO authIdentity FROM users_visible u WHERE u.mid = authMidValid;

    IF authIdentity = 'U' THEN
        friends_mid :=
            array(
                    SELECT u1.follower
                    FROM user_follow_visible u1
                             JOIN
                         user_follow_visible u2
                         ON
                             u1.followed = u2.follower
                    WHERE u1.follower = u2.followed
                      AND u1.followed = authMidValid
            );

        IF array_length(friends_mid, 1) IS NULL THEN
            RETURN generalRecommendations(pageSize, pageNum);
        END IF;

        interestBVs :=
            array (
            (
            SELECT
                bv
            FROM
                user_watch_video_visible
            WHERE
                mid = ANY(friends_mid)

            EXCEPT

            SELECT
                bv
            FROM
                user_watch_video_visible
            WHERE
                mid = authMidValid
            )

            INTERSECT

            SELECT
                bv
            FROM
                videos_visible
            WHERE
                videos_visible.review_time is not null
            AND
                videos_visible.public_time < now());

        IF array_length(interestBVs, 1) IS NULL THEN
            RETURN generalRecommendations(pageSize, pageNum);
        ELSE
            RETURN array(
                SELECT
                    friend_watch_table.bv
                FROM
                    (
                    SELECT
                        user_watch_video_visible.bv, count(user_watch_video_visible.mid) AS friend_watch_cnt
                    FROM
                        user_watch_video_visible
                    WHERE
                        user_watch_video_visible.bv = ANY(interestBVs)
                    AND
                        user_watch_video_visible.mid = ANY(friends_mid)
                    GROUP BY
                        user_watch_video_visible.bv
                    ) AS friend_watch_table
                JOIN
                    videos_visible
                    ON friend_watch_table.bv = videos_visible.bv
                JOIN
                    users_visible
                    ON videos_visible.owner = users_visible.mid
                ORDER BY
                        friend_watch_cnt DESC, level DESC, public_time DESC
                LIMIT
                    pageSize
                OFFSET
                    (pageNum - 1) * pageSize
                );
        END IF;
    ELSE
        friends_mid :=
            array(
                    SELECT u1.follower
                    FROM user_follow_visible u1
                             JOIN
                         user_follow_visible u2
                         ON
                             u1.followed = u2.follower
                    WHERE u1.follower = u2.followed
                      AND u1.followed = authMidValid
            );

        IF array_length(friends_mid, 1) IS NULL THEN
            RETURN generalRecommendations(pageSize, pageNum);
        END IF;

        interestBVs :=
            array (
            SELECT
                bv
            FROM
                user_watch_video_visible
            WHERE
                mid = ANY(friends_mid)

            EXCEPT

            SELECT
                bv
            FROM
                user_watch_video_visible
            WHERE
                mid = authMidValid
            );

        IF array_length(interestBVs, 1) IS NULL THEN
            RETURN generalRecommendations(pageSize, pageNum);
        ELSE
            RETURN array(
                SELECT
                    friend_watch_table.bv
                FROM
                    (
                    SELECT
                        user_watch_video_visible.bv, count(user_watch_video_visible.mid) AS friend_watch_cnt
                    FROM
                        user_watch_video_visible
                    WHERE
                        user_watch_video_visible.bv = ANY(interestBVs)
                    AND
                        user_watch_video_visible.mid = ANY(friends_mid)
                    GROUP BY
                        user_watch_video_visible.bv
                    ) AS friend_watch_table
                JOIN
                    videos_visible
                    ON friend_watch_table.bv = videos_visible.bv
                JOIN
                    users_visible
                    ON videos_visible.owner = users_visible.mid
                ORDER BY
                        friend_watch_cnt DESC, level DESC, public_time DESC
                LIMIT
                    pageSize
                OFFSET
                    (pageNum - 1) * pageSize
                );
        END IF;
    END IF;
END
$$ LANGUAGE plpgsql;

CREATE OR REPLACE FUNCTION recommendFriends(authMid BIGINT, authPassword TEXT, authQq TEXT, authWechat TEXT, pageSize INT, pageNum INT)
RETURNS BIGINT[]
AS $$
DECLARE
    authMidValid BIGINT;
BEGIN
    authMidValid := validateAuthInfo(authMid, authPassword, authQq, authWechat);
    IF authMidValid <= 0 THEN
        RETURN null;
    END IF;

    RETURN array(
            WITH now_followed AS (
                SELECT
                    followed
                FROM
                    user_follow_visible
                WHERE
                    follower = authMidValid
            )

            SELECT
                follower
            FROM
                user_follow_visible
            JOIN
                users_visible ON users_visible.mid = user_follow_visible.follower
            WHERE
                follower NOT IN (SELECT followed FROM now_followed)
                AND
                follower != authMidValid
                AND
                followed IN (SELECT followed FROM now_followed)
            GROUP BY
                follower, level, mid
            ORDER BY
                count(followed) DESC, level DESC, mid ASC
            LIMIT
                pageSize
            OFFSET
                (pageNum - 1) * pageSize
           );
END
$$ LANGUAGE plpgsql;