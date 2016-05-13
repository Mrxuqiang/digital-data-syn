/*
================================================================================
��ṹ����:TB_DTBAC
��ṹ����:���͵���������
��ṹĿ��:
================================================================================
*/

drop sequence SEQ_TB_DTBAC;
drop index AK_TB_DTBAC;
drop table TB_DTBAC;
create table TB_DTBAC  (                                       
   DTBAC_ID           INTEGER                                 not null,      /*���ͳ��ⵥID  */
   DTBAC001           NUMBER(1)                               not null,      /*�춯����      */
   DTBAC002           INTEGER                                 not null,      /*���ͷ�������  */
   DTBAC003           VARCHAR2(30)                            not null,      /*�����ջ�����  */
   DTBAC004           DATE                                    not null,      /*�ջ�����      */
   DTBAC005           INTEGER                                 not null,      /*��Դ����      */
   DTBAC006           INTEGER                                 not null,      /*����Ӫ����֯  */
   DTBAC007           INTEGER                                 not null,      /*�ջ�Ӫ����֯  */
   DTBAC008           INTEGER                                 not null,      /*������Ա      */
   DTBAC009           INTEGER                                 not null,      /*�ջ���Ա      */
   DTBAC010           VARCHAR2(1)                             not null,      /*ָ���ɹ�      */
   DTBAC011           INTEGER,                                               /*���۵���      */
   DTBAC012           VARCHAR2(255),                                         /*�ջ���ַ      */
   DTBAC013           VARCHAR2(255),                                         /*��ע          */
   DTBAC014           VARCHAR2(1)                                            /*���״̬      */
   DTBAC015           INTEGER,                                               /*¼����        */
   DTBAC016           DATE,                                                  /*¼������      */
   DTBAC017           INTEGER,                                               /*�����        */
   DTBAC018           DATE,                                                  /*�������      */
   CREATE_USER        VARCHAR2(12),                                          /*������Ա        */             
   USER_GROUP         VARCHAR2(12),                                          /*������Ա����    */             
   CREATE_DATE        DATE,                                                  /*��������        */             
   MODIFIER           VARCHAR2(12),                                          /*�޸���Ա        */             
   MODI_DATE          DATE,                                                  /*�޸�����        */             
   FLAG               NUMBER(1),                                             /*����״̬        */            


  constraint PK_TB_DTBAC primary key (DTBAC_ID)                               
);                                           
create unique index AK_TB_DTBAC on TB_DTBAC (DTBAC002,DTBAC003);               
create sequence SEQ_TB_DTBAC minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_DTBAC to public;                                     
grant index  on TB_DTBAC to public;                                     
grant update on TB_DTBAC to public;                                      
grant delete on TB_DTBAC to public;                                       
grant insert on TB_DTBAC to public;                                      
grant select on SEQ_TB_DTBAC to public;                                        