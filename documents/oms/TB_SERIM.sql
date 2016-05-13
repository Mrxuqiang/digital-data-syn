/*
20130929 add by gaoxl for ���ǣ�������Դ����SERIM007����ſ۷������ڵ�������ҵ
*/
/*
================================================================================
��ṹ����:TB_SERIM
��ṹ����:�̻����÷����µ��ӱ�
��ṹĿ��:�ֲ���
================================================================================
*/

drop sequence SEQ_TB_SERIM;
drop index AK_TB_SERIM;
drop table TB_SERIM;
create table TB_SERIM  (
   SERIM_ID             INTEGER                         not null,  /*�µ���ID      */
   SERIM001             INTEGER                         not null,  /*�µ���ID      */
   SERIM002             VARCHAR2(30),                              /*��Դ����      */
   SERIM003             VARCHAR2(60),                              /*��������      */
   SERIM004             INTEGER,                                   /*Ʒ��ID        */   
   SERIM005             INTEGER,                                   /*�۷���ID      */
   SERIM006             NUMBER(2),                                 /*�ۼ�����      */ 
   SERIM007             VARCHAR2(10),                              /*��Դ����      */          
   CREATE_USER          VARCHAR2(12),                              /*������Ա           */
   USER_GROUP           VARCHAR2(12),                              /*������Ա����       */                               
   CREATE_DATE          DATE,                                      /*��������           */
   MODIFIER             VARCHAR2(12),                              /*�޸���Ա           */
   MODI_DATE            DATE,                                      /*�޸�����           */
   FLAG                 NUMBER,                                    /*����״̬           */
   constraint PK_TB_SERIM primary key (SERIM_ID)
);
create unique index AK_TB_SERIM on TB_SERIM (SERIM001,SERIM002,SERIM004,SERIM005,FLAG);
create sequence SEQ_TB_SERIM minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_SERIM to public;
grant index  on TB_SERIM to public;
grant update on TB_SERIM to public; 
grant delete on TB_SERIM to public;  
grant insert on TB_SERIM to public; 
grant select on SEQ_TB_SERIM to public;   