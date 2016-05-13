/*
================================================================================
��ṹ����:TB_INVND
��ṹ����:Ʒ������Э���ӱ�
��ṹĿ��:
================================================================================
*/

drop sequence SEQ_TB_INVND;
drop index AK_TB_INVND;
drop table TB_INVND;
create table TB_INVND  (
   INVND_ID           INTEGER              not null,      /*�ؿ���ϸID          */
   INVND001           INTEGER              not null,      /*�ؿⵥID            */
   INVND002           INTEGER              not null,      /*��ƷID              */
   INVND003           INTEGER              not null,      /*��λID              */
   INVND004           VARCHAR2(30),                       /*ά��1ID             */
   INVND005           INTEGER,                            /*ά��2ID             */
   INVND006           INTEGER,                            /*ά��3ID             */
   INVND007           INTEGER,                            /*ά��4ID             */
   INVND008           INTEGER,                            /*ά��5ID             */
   INVND009           NUMBER(18,3)         not null,      /*��������            */
   INVND010           NUMBER(18,3)         not null,      /*�ؿ�����            */
   INVND011           VARCHAR2(255),                      /*��λ��Ĭ��Ϊ�ݴ��λ�����޸�*/
   INVND012           VARCHAR2(255),                      /*��ע                */
   INVND013           INTEGER              not null,      /*ǩ�յ���ϸID        */
   INVND014           VARCHAR2(1)          not null,      /*�Ƿ���װƷ          */
   INVND015           VARCHAR2(1)          not null,      /*�Ƿ�ɷ�            */
   INVND016           VARCHAR2(30),                       /*���׼���Ӧ�����    */
   INVND017	      INTEGER			          /*������װƷID */
   CREATE_USER        VARCHAR2(12),                       /*������Ա            */
   USER_GROUP         VARCHAR2(12),                       /*������Ա����        */                               
   CREATE_DATE        DATE,                               /*��������            */
   MODIFIER           VARCHAR2(12),                       /*�޸���Ա            */
   MODI_DATE          DATE,                               /*�޸�����            */
   FLAG               NUMBER(1),                          /*����״̬            */
   constraint PK_TB_INVND primary key (INVND_ID)
);

create sequence SEQ_TB_INVND minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_INVND to public;
grant index  on TB_INVND to public;
grant update on TB_INVND to public; 
grant delete on TB_INVND to public;  
grant insert on TB_INVND to public; 
grant select on SEQ_TB_INVND to public;   


