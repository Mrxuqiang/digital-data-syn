/*
================================================================================
��ṹ����:TB_MSSAH
��ṹ���ƣ����ǩ��ӡ���������ӱ�
��ṹĿ��:�ֲ���
================================================================================
*/

drop sequence SEQ_TB_MSSAH;
drop index AK_TB_MSSAH;
drop table TB_MSSAH;
create table TB_MSSAH  (
   MSSAH_ID           INTEGER                          not null,         /*���ǩ��ӡ����������ID */   
   MSSAH001           INTEGER                          not null,         /*���ǩ��ӡ������ID     */   
   MSSAH002           DATE,                                              /*���Ƶ��ۿ�ʼʱ��       */  
   MSSAH003           DATE ,                                             /*���Ƶ��۽���ʱ��       */ 
   MSSAH004           VARCHAR2(256) ,                                    /*��ע       */    
   CREATE_USER        VARCHAR2(1),                                       /*������Ա          */
   USER_GROUP         VARCHAR2(12),                                      /*������Ա����      */                               
   CREATE_DATE        DATE,                                              /*��������          */
   MODIFIER           VARCHAR2(12),                                      /*�޸���Ա          */
   MODI_DATE          DATE,                                              /*�޸�����          */
   FLAG               NUMBER(1),                                         /*����״̬          */
   constraint PK_TB_MSSAH primary key (MSSAH_ID)
);
create sequence SEQ_TB_MSSAH minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_MSSAH to public;
grant index  on TB_MSSAH to public;
grant update on TB_MSSAH to public; 
grant delete on TB_MSSAH to public;  
grant insert on TB_MSSAH to public; 
grant select on SEQ_TB_MSSAH to public;   