/*
================================================================================
��ṹ����:TB_MSSAD
��ṹ���ƣ����ǩ��ӡ���������ӱ�
��ṹĿ��:�ֲ���
================================================================================
*/

drop sequence SEQ_TB_MSSAD;
drop index AK_TB_MSSAD;
drop table TB_MSSAD;
create table TB_MSSAD  (
   MSSAD_ID           INTEGER                          not null,         /*���ǩ��ӡ����������ID */   
   MSSAD001           INTEGER                          not null,         /*���ǩ��ӡ������ID     */   
   MSSAD002           DATE,                                              /*���Ƶ��ۿ�ʼʱ��       */  
   MSSAD003           DATE ,                                             /*���Ƶ��۽���ʱ��       */ 
   MSSAD004           VARCHAR2(256) ,                                    /*��ע       */    
   CREATE_USER        VARCHAR2(1),                                       /*������Ա          */
   USER_GROUP         VARCHAR2(12),                                      /*������Ա����      */                               
   CREATE_DATE        DATE,                                              /*��������          */
   MODIFIER           VARCHAR2(12),                                      /*�޸���Ա          */
   MODI_DATE          DATE,                                              /*�޸�����          */
   FLAG               NUMBER(1),                                         /*����״̬          */
   constraint PK_TB_MSSAD primary key (MSSAD_ID)
);
create sequence SEQ_TB_MSSAD minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_MSSAD to public;
grant index  on TB_MSSAD to public;
grant update on TB_MSSAD to public; 
grant delete on TB_MSSAD to public;  
grant insert on TB_MSSAD to public; 
grant select on SEQ_TB_MSSAD to public;   