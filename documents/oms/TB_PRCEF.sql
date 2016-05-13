/*
20130716 modi by gaoxl for ���ǣ�add PRCEF013~PRCEF025��mark PRCEF003��PRCEF008
*/

/*
================================================================================
��ṹ����:TB_PRCEF
��ṹ����:��Ʒ�������뵥�ӱ�
��ṹĿ��:�ֲ���
================================================================================
*/

drop sequence SEQ_TB_PRCEF;
drop index AK_TB_PRCEF;
drop table TB_PRCEF;
create table TB_PRCEF  (
   PRCEF_ID           INTEGER              not null,      /* ���뵥��ID        */
   PRCEF001           INTEGER              not null,      /* ���뵥��id        */
   PRCEF002           INTEGER              not null,      /* ��Ʒid            */
   PRCEF003           VARCHAR2(80),                       /* ����              */
   PRCEF004           VARCHAR2(40),                       /* �ͺ�              */
   PRCEF005           VARCHAR2(80)                        /* ���              */
   PRCEF006           INTEGER,                            /* ��λid            */
   PRCEF007           INTEGER,                            /* �ȼ�id            */
   PRCEF008           VARCHAR2(256),                      /* ����              */
   PRCEF009           NUMBER,                             /* ���ǩ����         */
   PRCEF010           NUMBER(28,2),                       /* ԭ�ۼ�             */ 
   PRCEF011           NUMBER(28,2),                       /* ������             */
   PRCEF012           VARCHAR2(255),                      /* ��ע               */ 
   PRCEF013           VARCHAR2(20),                       /* ���Ա               */ 
   PRCEF014           INTEGER,                            /* ��Ʒ����ID           */ 
   PRCEF015           VARCHAR2(80),                       /* ����                 */ 
   PRCEF016           VARCHAR2(80),                       /* ����                 */ 
   PRCEF017           VARCHAR2(80),                       /* ����                 */ 
   PRCEF018           INTEGER,                            /* �Զ������1          */ 
   PRCEF019           INTEGER,                            /* �Զ������2          */ 
   PRCEF020           INTEGER,                            /* �Զ������3          */ 
   PRCEF021           INTEGER,                            /* �Զ������4          */ 
   PRCEF022           INTEGER,                            /* �Զ������5          */ 
   PRCEF023           INTEGER,                            /* �Զ������6          */ 
   PRCEF024           INTEGER,                            /* �Զ������7          */ 
   PRCEF025           INTEGER,                            /* �Զ������8          */           
   CREATE_USER        VARCHAR2(12),                       /* ������Ա            */
   USER_GROUP         VARCHAR2(12),                       /* ������Ա����        */                           
   CREATE_DATE        DATE,                               /* ��������            */
   MODIFIER           VARCHAR2(12),                       /* �޸���Ա            */
   MODI_DATE          DATE,                               /* �޸�����            */
   FLAG               NUMBER,                             /* ����״̬            */
   constraint PK_TB_PRCEF primary key (PRCEF_ID)
);
create unique index AK_TB_PRCEF on TB_PRCEF (PRCEF001,PRCEF002,FLAG);
create sequence SEQ_TB_PRCEF minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_PRCEF to public;
grant index  on TB_PRCEF to public;
grant update on TB_PRCEF to public; 
grant delete on TB_PRCEF to public;  
grant insert on TB_PRCEF to public; 
grant select on SEQ_TB_PRCEF to public;   

