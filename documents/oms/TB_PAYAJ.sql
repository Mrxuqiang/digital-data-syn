/*
================================================================================
��ṹ����:TB_PAYAJ
��ṹ����:ֱ�Ӹ�����ϸ��
��ṹĿ��:
================================================================================
*/

drop sequence SEQ_TB_PAYAJ;
drop index AK_TB_PAYAJ;
drop table TB_PAYAJ;
create table TB_PAYAJ  (
   PAYAJ_ID             INTEGER                         not null,  /*ֱ�Ӹ�����ϸID    */
   PAYAJ001             INTEGER                         not null,  /*Ӧ������ID        */
   PAYAJ002             VARCHAR2(1) ,                              /*����              */
   PAYAJ003             VARCHAR2(1) ,                              /*���ʽ          */
   PAYAJ004             INTEGER,                                   /*Ԥ������ID        */
   PAYAJ005             INTEGER ,                                  /*����ID            */ 
   PAYAJ006             NUMBER(16,4) ,                              /*����              */ 
   PAYAJ007             NUMBER(16,2),                              /*ԭ�Ҹ�����      */ 
   PAYAJ008             NUMBER(16,2),                              /*���Ҹ�����      */ 
   PAYAJ009             INTEGER,                                   /*�ֽ��춯��ID      */
   PAYAJ010             INTEGER,                                   /*�����ʺ�ID        */ 
   PAYAJ011             VARCHAR2(60),                              /*֧Ʊ��            */ 
   PAYAJ012             NUMBER(16,2),                              /*ԭ��Ԥ�����      */ 
   PAYAJ013             NUMBER(16,2),                              /*����Ԥ�����      */ 
   PAYAJ014             NUMBER(16,2),                              /*ԭ���ѳ���      */ 
   PAYAJ015             NUMBER(16,2),                              /*�����ѳ���      */  
   CREATE_USER          VARCHAR2(12),                              /*������Ա           */
   USER_GROUP           VARCHAR2(12),                              /*������Ա����       */                               
   CREATE_DATE          DATE,                                      /*��������           */
   MODIFIER             VARCHAR2(12),                              /*�޸���Ա           */
   MODI_DATE            DATE,                                      /*�޸�����           */
   FLAG                 NUMBER(1),                                 /*����״̬           */
   constraint PK_TB_PAYAJ primary key (PAYAJ_ID)
);
create sequence SEQ_TB_PAYAJ minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_PAYAJ to public;
grant index  on TB_PAYAJ to public;
grant update on TB_PAYAJ to public; 
grant delete on TB_PAYAJ to public;  
grant insert on TB_PAYAJ to public; 
grant select on SEQ_TB_PAYAJ to public;   