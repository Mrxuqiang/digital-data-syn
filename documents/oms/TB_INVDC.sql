/*
================================================================================
��ṹ����:TB_INVDC
��ṹ����:������ص�����
��ṹĿ��:
================================================================================
*/

drop sequence SEQ_TB_INVDC;
drop index AK_TB_INVDC;
drop table TB_INVDC;
create table TB_INVDC  (
   INVDC_ID             INTEGER                         not null,     /*���ص�ID      */     
   INVDC001             INTEGER                         not null,     /*���ص���      */     
   INVDC002             VARCHAR2(30)                    not null,     /*���ص���      */     
   INVDC003             INTEGER                         not null,     /*��Դ����      */     
   INVDC004             DATE                            not null,     /*��������      */     
   INVDC005             INTEGER                         not null,     /*����Ӫ����֯  */     
   INVDC006             INTEGER                         not null,     /*���ز���      */     
   INVDC007             INTEGER                         not null,     /*������Ա      */     
   INVDC008             VARCHAR2(1)                     not null,     /*�������      */     
   INVDC009             INTEGER                         not null,     /*�˿�����      */     
   INVDC010             INTEGER,                                       /*֧������      */     
   INVDC011             VARCHAR2(255),                                 /*��ע          */     
   INVDC012             VARCHAR2(1),                                  /*���״̬      */     
   INVDC013             INTEGER,                                       /*¼����        */     
   INVDC014             DATE,                                         /*¼������      */     
   INVDC015             INTEGER,                                      /*�����        */     
   INVDC016             DATE,                                         /*�������      */    
   CREATE_USER          VARCHAR2(12),                                 /*������Ա        */
   USER_GROUP           VARCHAR2(12),                                 /*������Ա����    */                               
   CREATE_DATE          DATE,                                         /*��������        */
   MODIFIER             VARCHAR2(12),                                 /*�޸���Ա        */
   MODI_DATE            DATE,                                         /*�޸�����        */
   FLAG                 NUMBER(1),                                    /*����״̬        */
   constraint PK_TB_INVDC primary key (INVDC_ID)
);
create unique index AK_TB_INVDC on TB_INVDC (INVDC001,INVDC002,INVDC005);
create sequence SEQ_TB_INVDC minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_INVDC to public;
grant index  on TB_INVDC to public;
grant update on TB_INVDC to public; 
grant delete on TB_INVDC to public;  
grant insert on TB_INVDC to public; 
grant select on SEQ_TB_INVDC to public;   