/*
================================================================================
��ṹ����:TB_PURHD
��ṹ����:�����ɹ����ӱ�
��ṹĿ��:
================================================================================
*/

drop sequence SEQ_TB_PURHD;
drop index AK_TB_PURHD;
drop table TB_PURHD;
create table TB_PURHD  (
   PURHD_ID           INTEGER                           not null,          /*��Ʒ��ϸID     */ 
   PURHD001           INTEGER                           not null,          /*����������ID   */ 
   PURHD002           INTEGER,                                             /*��Դ���ID     */ 
   PURHD003           INTEGER                           not null,          /*��Ʒ����       */ 
   PURHD004           INTEGER,                                             /*ά��1          */ 
   PURHD005           INTEGER,                                             /*ά��2          */ 
   PURHD006           INTEGER,                                             /*ά��3          */ 
   PURHD007           INTEGER,                                             /*ά��4          */ 
   PURHD008           INTEGER,                                             /*ά��5          */ 
   PURHD009           INTEGER                           not null,          /*�ɹ���λ       */ 
   PURHD010           NUMBER(18,3)                      not null,          /*������         */ 
   PURHD011           NUMBER(18,3)                      not null,          /*�ɹ���         */ 
   PURHD012           NUMBER(18,3),                                        /*�ѽ���         */ 
   PURHD013           NUMBER(12,2),                                        /*˰ǰ����       */ 
   PURHD014           NUMBER(12,2),                                        /*��˰����       */ 
   PURHD015           INTEGER                           not null,          /*˰��           */ 
   PURHD016           NUMBER(12,2)                      not null,          /*˰��           */ 
   PURHD017           NUMBER(12,2),                                        /*˰ǰ���       */ 
   PURHD018           NUMBER(12,2),                                        /*��˰���       */ 
   PURHD019           NUMBER(12,2),                                        /*����           */ 
   PURHD020           VARCHAR2(1)                       not null,          /*�᰸��         */ 
   PURHD021           NUMBER(12,2),                                        /*��ǰ�ۼ�       */ 
   PURHD022           NUMBER(12,2),                                        /*��ǰ����       */
   PURHD023           VARCHAR2(1)                       not null,          /*���ȼ�         */
   PURHD024           DATE,                                                /*Ԥ������       */
   PURHD025           NUMBER(12,2)                      not null,          /*��λ������     */
   PURHD026           VARCHAR2(255),                                       /*��ע           */
   CREATE_USER        VARCHAR2(12),                                        /*������Ա         */
   USER_GROUP         VARCHAR2(12),                                        /*������Ա����     */                               
   CREATE_DATE        DATE,                                                /*��������         */
   MODIFIER           VARCHAR2(12),                                        /*�޸���Ա         */
   MODI_DATE          DATE,                                                /*�޸�����         */
   FLAG               NUMBER(1),                                           /*����״̬         */
   constraint PK_TB_PURHD primary key (PURHD_ID)
);
create unique index AK_TB_PURHD on TB_PURHD (PURHD_ID,PURHD001,PURHD004);
create sequence SEQ_TB_PURHD minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_PURHD to public;
grant index  on TB_PURHD to public;
grant update on TB_PURHD to public; 
grant delete on TB_PURHD to public;  
grant insert on TB_PURHD to public; 
grant select on SEQ_TB_PURHD to public;   