/*
================================================================================
��ṹ����:TB_CONBB
��ṹ����:��ͬ�Ż�չλ��
��ṹĿ��:
================================================================================
*/

drop sequence SEQ_TB_CONBB;
drop index AK_TB_CONBB;
drop table TB_CONBB;
create table TB_CONBB  (
   CONBB_ID             INTEGER                         not null,  /*�Żݵ�չλID    */
   CONBB001             INTEGER                         not null,  /*�Żݵ�ID            */
   CONBB002             INTEGER,                                   /*��ͬID              */
   CONBB003             INTEGER,                                   /*չλID              */
   CONBB004             INTEGER,                                   /*Ʒ��ID              */
   CONBB005             INTEGER,                                   /*�̻�ID              */
   CONBB006             NUMBER(12,2),                              /*�������            */
   CONBB007             NUMBER(12,2),                              /*��չλԤ��������    */
   CONBB008             NUMBER(12,2),                              /*Ԥ�㵥��            */
   CONBB009             NUMBER(12,2),                              /*��ͬ�Żݺ󵥼�      */
   CONBB010             NUMBER(12,2),                              /*ʵ��Ԥ�㵥�۲��    */
   CONBB011             DATE                                    ,  /*��ʼ����            */
   CONBB012             DATE                                    ,  /*��������            */
   CONBB013             NUMBER(12,2),                              /*�����Ż�            */
   CONBB014             NUMBER(12,2),                              /*�ۼ��Ż�            */
   CONBB015             NUMBER(12,2),                              /*��ͬ����            */
   CONBB016             NUMBER(12,2),                              /*��ͬ����            */
   CONBB017             NUMBER(12,2),                              /*�ۼưٷֱ�          */
   CONBB018             VARCHAR2(1)                             ,  /*�Ƿ񱻺�ͬʹ��      */
   CONBB019             NUMBER(12,2),                              /*�������Ż�          */
   CREATE_USER          VARCHAR2(12),                              /*������Ա            */
   USER_GROUP           VARCHAR2(12),                              /*������Ա����        */                             
   CREATE_DATE          DATE,                                      /*��������            */
   MODIFIER             VARCHAR2(12),                              /*�޸���Ա            */
   MODI_DATE            DATE,                                      /*�޸�����            */
   FLAG                 NUMBER,                                    /*����״̬            */
   constraint PK_TB_CONBB primary key (CONBB_ID)
);
create unique index AK_TB_CONBB on TB_CONBB (CONBB001,CONBB002,CONBB003,CONBB004,CONBB005);
create sequence SEQ_TB_CONBB minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_CONBB to public;
grant index  on TB_CONBB to public;
grant update on TB_CONBB to public; 
grant delete on TB_CONBB to public;  
grant insert on TB_CONBB to public; 
grant select on SEQ_TB_CONBB to public;   