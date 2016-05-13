/*
================================================================================
��ṹ����:TB_MSSAG
��ṹ���ƣ����ǩ��ӡ������������
��ṹĿ��:�ֲ���
================================================================================
*/

drop sequence SEQ_TB_MSSAG;
drop index AK_TB_MSSAG;
drop table TB_MSSAG;
create table TB_MSSAG  (
   MSSAG_ID           INTEGER                          not null,         /*���ǩ����������ID   */   
   MSSAG001           INTEGER                          not null,         /*Ӫ����֯             */   
   MSSAG002           NUMBER(4),                                         /*��ǩ�ٴδ�ӡ����     */  
   MSSAG003           NUMBER(4) ,                                        /*��ǩ�ٴδ�ӡʱ������ */ 
   MSSAG004           NUMBER(4),                                         /*����ǩ��������       */
   MSSAG005           NUMBER(4),                                         /*�����������ޣ�%��    */
   MSSAG006           NUMBER(4),                                         /*�����������ޣ�%��    */
   MSSAG007           NUMBER(4),                                         /*��������             */
   MSSAG008           NUMBER(4),                                         /*���۷��ȣ�%��        */
   MSSAG009           NUMBER(4),                                         /*��������             */
   MSSAG010           NUMBER(4),                                         /*���۱��ʣ�%��        */
   CREATE_USER        VARCHAR2(1),                                       /*������Ա          */
   USER_GROUP         VARCHAR2(12),                                      /*������Ա����      */                               
   CREATE_DATE        DATE,                                              /*��������          */
   MODIFIER           VARCHAR2(12),                                      /*�޸���Ա          */
   MODI_DATE          DATE,                                              /*�޸�����          */
   FLAG               NUMBER(1),                                         /*����״̬          */
   constraint PK_TB_MSSAG primary key (MSSAG_ID)
);
create unique index AK_TB_MSSAG on TB_MSSAG (MSSAG001,FLAG);
create sequence SEQ_TB_MSSAG minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_MSSAG to public;
grant index  on TB_MSSAG to public;
grant update on TB_MSSAG to public; 
grant delete on TB_MSSAG to public;  
grant insert on TB_MSSAG to public; 
grant select on SEQ_TB_MSSAG to public;   