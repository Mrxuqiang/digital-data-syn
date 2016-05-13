/*
================================================================================
��ṹ����:TB_PURHC
��ṹ����:�����ɹ�������
��ṹĿ��:
================================================================================
*/

drop sequence SEQ_TB_PURHC;
drop index AK_TB_PURHC;
drop table TB_PURHC;
create table TB_PURHC  (
   PURHC_ID           INTEGER                            not null,     /*��������ID       */ 
   PURHC001           INTEGER                            not null,     /*������������     */ 
   PURHC002           VARCHAR2(30)                       not null,     /*������������     */ 
   PURHC003           DATE                               not null,     /*��������         */ 
   PURHC004           INTEGER,                                         /*��Դ����         */ 
   PURHC005           INTEGER                            not null,     /*����Ӫ����֯     */ 
   PURHC006           INTEGER                            not null,     /*��������         */ 
   PURHC007           INTEGER                            not null,     /*�ɹ�Ա           */ 
   PURHC008           INTEGER                            not null,     /*��Ӧ��           */ 
   PURHC009           VARCHAR2(1)                        not null,     /*��Ӫ��ʽ         */ 
   PURHC010           VARCHAR2(1)                        not null,     /*���䷽ʽ         */ 
   PURHC011           DATE                               not null,     /*��������         */ 
   PURHC012           DATE,                                            /*��ֹ����         */ 
   PURHC013           VARCHAR2(255),                                   /*�ͻ���ַ         */ 
   PURHC014           VARCHAR2(255),                                   /*��ע             */ 
   PURHC015           VARCHAR2(1),                                     /*���״̬         */ 
   PURHC016           INTEGER,                                         /*¼����           */ 
   PURHC017           DATE,                                            /*¼������         */ 
   PURHC018           INTEGER,                                         /*�����           */ 
   PURHC019           DATE,                                            /*�������         */ 
   CREATE_USER        VARCHAR2(12),                                    /*������Ա         */
   USER_GROUP         VARCHAR2(12),                                    /*������Ա����     */                               
   CREATE_DATE        DATE,                                            /*��������         */
   MODIFIER           VARCHAR2(12),                                    /*�޸���Ա         */
   MODI_DATE          DATE,                                            /*�޸�����         */
   FLAG               NUMBER(1),                                       /*����״̬         */
   constraint PK_TB_PURHC primary key (PURHC_ID)
);
create unique index AK_TB_PURHC on TB_PURHC (PURHC_ID,PURHC001, PURHC002);
create sequence SEQ_TB_PURHC minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_PURHC to public;
grant index  on TB_PURHC to public;
grant update on TB_PURHC to public; 
grant delete on TB_PURHC to public;  
grant insert on TB_PURHC to public; 
grant select on SEQ_TB_PURHC to public;   