/*
================================================================================
��ṹ����:TB_INVEA
��ṹ����:��װ������
��ṹĿ��:
================================================================================
*/

drop sequence SEQ_TB_INVEA;
drop index AK_TB_INVEA;
drop table TB_INVEA;
create table TB_INVEA  (
   INVEA_ID             INTEGER                        not null,     /*��װ��ID        */
   INVEA001             INTEGER                        not null,     /*��װ����        */
   INVEA002             VARCHAR2(30)                   not null,     /*��װ����        */
   INVEA003             INTEGER                        not null,     /*��װ��Ʒ        */
   INVEA004             NUMBER(18,3)                   not null,     /*��װ����        */
   INVEA005             INTEGER                        not null,     /*Ӫ����֯        */
   INVEA006             INTEGER,                                     /*��װ����        */
   INVEA007             INTEGER,                                     /*��װ��Ա        */
   INVEA008             INTEGER                        not null,     /*��װ�ֿ�        */
   INVEA009             INTEGER,                                     /*��װ��λ        */ -- update by hansf ���ã�����Ϊnull
   INVEA010             VARCHAR2(1),                                 /*���״̬        */
   INVEA011             INTEGER,                                     /*¼����          */
   INVEA012             DATE,                                        /*¼������        */
   INVEA013             INTEGER,                                     /*�����          */
   INVEA014             DATE,                                        /*�������        */
   INVEA015             VARCHAR2(255),                               /*��ע            */
   INVEA016             INTEGER,                                     /*ά��1           */
   INVEA017             INTEGER,                                     /*ά��2           */
   INVEA018             INTEGER,                                     /*ά��3           */
   INVEA019             INTEGER,                                     /*ά��4           */
   INVEA020             INTEGER,                                     /*ά��5           */
   CREATE_USER          VARCHAR2(12),                                /*������Ա        */
   USER_GROUP           VARCHAR2(12),                                /*������Ա����    */                               
   CREATE_DATE          DATE,                                        /*��������        */
   MODIFIER             VARCHAR2(12),                                /*�޸���Ա        */
   MODI_DATE            DATE,                                        /*�޸�����        */
   FLAG                 NUMBER(1),                                   /*����״̬        */
   constraint PK_TB_INVEA primary key (INVEA_ID)
);
create unique index AK_TB_INVEA on TB_INVEA (INVEA001,INVEA002);
create sequence SEQ_TB_INVEA minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_INVEA to public;
grant index  on TB_INVEA to public;
grant update on TB_INVEA to public; 
grant delete on TB_INVEA to public;  
grant insert on TB_INVEA to public; 
grant select on SEQ_TB_INVEA to public;   