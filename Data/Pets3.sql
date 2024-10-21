CREATE TABLE PETS3 (
    desertionNo NUMBER NOT NULL,
    filename VARCHAR2(255 BYTE),
    happenDt DATE,
    happenPlace VARCHAR2(255 BYTE),
    kindCd VARCHAR2(50 BYTE),
    colorCd VARCHAR2(100 BYTE),
    age VARCHAR2(50 BYTE),
    weight VARCHAR2(20 BYTE),
    noticeNo VARCHAR2(50 BYTE),
    noticeSdt DATE,
    noticeEdt DATE,
    popfile VARCHAR2(255 BYTE),
    processState VARCHAR2(50 BYTE),
    sexCd VARCHAR2(10 BYTE),
    neuterYn CHAR(1 BYTE),
    specialMark VARCHAR2(255 BYTE),
    careNm VARCHAR2(100 BYTE),
    careTel VARCHAR2(50 BYTE),
    careAddr VARCHAR2(255 BYTE),
    orgNm VARCHAR2(100 BYTE),
    chargeNm VARCHAR2(100 BYTE),
    officetel VARCHAR2(50 BYTE),
    CONSTRAINT pk_desertionNo PRIMARY KEY (desertionNo)
);

commit;

desc pets3;

select * from pets3;

drop table pets3;