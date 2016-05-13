/*
================================================================================
��ṹ����:TB_MSSAC
��ṹ���ƣ����ǩ��ӡ������������
��ṹĿ��:�ֲ���
================================================================================
*/

drop sequence SEQ_TB_MSSAC;
drop index AK_TB_MSSAC;
drop table TB_MSSAC;
create table TB_MSSAC  (
   MSSAC_ID           INTEGER                          not null,         /*���ǩ����������ID   */   
   MSSAC001           INTEGER                          not null,         /*Ӫ����֯             */   
   MSSAC002           NUMBER(4),                                         /*��ǩ�ٴδ�ӡ����     */  
   MSSAC003           NUMBER(4) ,                                        /*��ǩ�ٴδ�ӡʱ������ */ 
   MSSAC004           NUMBER(4),                                         /*����ǩ��������       */
   MSSAC005           NUMBER(4),                                         /*�����������ޣ�%��    */
   MSSAC006           NUMBER(4),                                         /*�����������ޣ�%��    */
   MSSAC007           NUMBER(4),                                         /*��������             */
   MSSAC008           NUMBER(4),                                         /*���۷��ȣ�%��        */
   MSSAC009           NUMBER(4),                                         /*��������             */
   MSSAC010           NUMBER(4),                                         /*���۱��ʣ�%��        */
   CREATE_USER        VARCHAR2(1),                                       /*������Ա          */
   USER_GROUP         VARCHAR2(12),                                      /*������Ա����      */                               
   CREATE_DATE        DATE,                                              /*��������          */
   MODIFIER           VARCHAR2(12),                                      /*�޸���Ա          */
   MODI_DATE          DATE,                                              /*�޸�����          */
   FLAG               NUMBER(1),                                         /*����״̬          */
   constraint PK_TB_MSSAC primary key (MSSAC_ID)
);
create unique index AK_TB_MSSAC on TB_MSSAC (MSSAC001,FLAG);
create sequence SEQ_TB_MSSAC minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_MSSAC to public;
grant index  on TB_MSSAC to public;
grant update on TB_MSSAC to public; 
grant delete on TB_MSSAC to public;  
grant insert on TB_MSSAC to public; 
grant select on SEQ_TB_MSSAC to public;   