/*
================================================================================
��ṹ����:TB_SERMP
��ṹ����:γ���ֶܷ�������
��ṹĿ��:ȫ�ֱ�
================================================================================
*/

drop sequence SEQ_TB_SERMP;
drop index AK_TB_SERMP;
drop table TB_SERMP;
create table TB_SERMP  (                                       
   SERMP_ID           INTEGER                 not null,            /*γ���ֶܷ�����ID         */   
   SERMP001           NUMBER(4)               not null,            /*���                     */   
   SERMP002           NUMBER(2)               not null,            /*����                     */   
   SERMP003           VARCHAR2(255),                               /*��ע                     */            
   CREATE_USER        VARCHAR2(12),                                /*������Ա          */
   USER_GROUP         VARCHAR2(12),                                /*������Ա����      */
   CREATE_DATE        DATE,                                        /*��������          */
   MODIFIER           VARCHAR2(12),                                /*�޸���Ա          */
   MODI_DATE          DATE,                                        /*�޸�����          */
   FLAG               NUMBER(1),                                   /*����״̬          */
   
   constraint PK_TB_SERMP primary key (SERMP_ID)                               
);                                           
create unique index AK_TB_SERMP on TB_SERMP (SERMP001,SERMP002,FLAG);               
create sequence SEQ_TB_SERMP minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_SERMP to public;                                     
grant index  on TB_SERMP to public;                                     
grant update on TB_SERMP to public;                                      
grant delete on TB_SERMP to public;                                       
grant insert on TB_SERMP to public;                                      
grant select on SEQ_TB_SERMP to public;                                        