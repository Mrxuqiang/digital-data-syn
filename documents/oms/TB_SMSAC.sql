/*
================================================================================
��ṹ����:TB_SMSAC
��ṹ����:�ⲿ������
��ṹĿ��:ȫ�ֱ�
================================================================================
*/

drop sequence SEQ_TB_SMSAC;
drop index AK_TB_SMSAC;
drop table TB_SMSAC;
create table TB_SMSAC  (
   SMSAC_ID            INTEGER,                not null,            /*����ģ�����ID  */        
   SMSAC001            INTEGER,                not null,            /*����ģ��ID      */ ȱʡID��ȡ(SMSAB_ID)     
   SMSAC002            VARCHAR2(12),                                /*��������        */ �����arg+ȫ�����б�ŵ���ʽ��ʾ��ϵͳ�Զ�����
   SMSAC003            VARCHAR2(1),                                 /*��������        */ 1.INTEGER 2.VARCHAR2 3.DATE 4.NUMBER
   SMSAC004            VARCHAR2(30),                                /*��������        */ 
   CREATE_USER         VARCHAR2(12),                                /*������Ա        */
   USER_GROUP          VARCHAR2(12),                                /*������Ա����    */                             
   CREATE_DATE         DATE,                                        /*��������        */
   MODIFIER            VARCHAR2(12),                                /*�޸���Ա        */
   MODI_DATE           DATE,                                        /*�޸�����        */
   FLAG                NUMBER,                                      /*����״̬        */
   constraint PK_TB_SMSAC primary key (SMSAC_ID)
);
create unique index AK_TB_SMSAC on TB_SMSAC (SMSAC001,SMSAC002,FLAG);
create sequence SEQ_TB_SMSAC minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_SMSAC to public;
grant index  on TB_SMSAC to public;
grant update on TB_SMSAC to public; 
grant delete on TB_SMSAC to public;  
grant insert on TB_SMSAC to public; 
grant select on SEQ_TB_SMSAC to public;   