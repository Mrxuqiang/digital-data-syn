/*
20130716 modi by gaoxl for ���� add PRCEB015~PRCEB027
*/

/*
================================================================================
��ṹ����:TB_PRCEB
��ṹ����:��Ʒ�ؼ����뵥�ӱ�
��ṹĿ��:�ֲ���
================================================================================
*/

drop sequence SEQ_TB_PRCEB;
drop index AK_TB_PRCEB;
drop table TB_PRCEB;
create table TB_PRCEB  (
   PRCEB_ID           INTEGER              not null,      /* ���뵥��ID        */
   PRCEB001           INTEGER              not null,      /* ���뵥��id        */
   PRCEB002           INTEGER              not null,      /* ��Ʒid            */
   PRCEB003           VARCHAR2(80),                       /* ����              */
   PRCEB004           VARCHAR2(40),                       /* �ͺ�              */
   PRCEB005           VARCHAR2(80)                        /* ���              */
   PRCEB006           INTEGER,                            /* ��λid            */
   PRCEB007           INTEGER,                            /* �ȼ�id            */
   PRCEB008           VARCHAR2(256),                      /* ����              */
   PRCEB009           NUMBER,                             /* ���ǩ����         */
   PRCEB010           NUMBER(28,2),                       /* ԭ�ۼ�             */ 
   PRCEB011           NUMBER(28,2),                       /* �´�����           */
   PRCEB012           DATE,                               /* ��Ч����           */   
   PRCEB013           DATE,                               /* ��������           */
   PRCEB014           VARCHAR2(255),                      /* ��ע                     */ 
   PRCEB015           VARCHAR2(80),                      /* ����                     */ 
   PRCEB016           VARCHAR2(80),                      /* ����                     */  
   PRCEB017           VARCHAR2(80),                      /* ����                     */  
   PRCEB018           VARCHAR2(30),                      /* ���Ա                   */
   PRCEB019           INTEGER,                      /* ��Ʒ����ID               */  
   PRCEB020           INTEGER,                      /* �Զ������1              */   
   PRCEB021           INTEGER,                      /* �Զ������2              */
   PRCEB022           INTEGER,                      /* �Զ������3              */
   PRCEB023           INTEGER,                      /* �Զ������4              */
   PRCEB024           INTEGER,                      /* �Զ������5              */
   PRCEB025           INTEGER,                      /* �Զ������6              */
   PRCEB026           INTEGER,                      /* �Զ������7              */
   PRCEB027           INTEGER,                      /* �Զ������8              */
   CREATE_USER        VARCHAR2(12),                       /* ������Ա            */
   USER_GROUP         VARCHAR2(12),                       /* ������Ա����        */                           
   CREATE_DATE        DATE,                               /* ��������            */
   MODIFIER           VARCHAR2(12),                       /* �޸���Ա            */
   MODI_DATE          DATE,                               /* �޸�����            */
   FLAG               NUMBER,                             /* ����״̬            */
   constraint PK_TB_PRCEB primary key (PRCEB_ID)
);
create unique index AK_TB_PRCEB on TB_PRCEB (PRCEB001,PRCEB002,PRCEB012,PRCEB013,FLAG);
create sequence SEQ_TB_PRCEB minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_PRCEB to public;
grant index  on TB_PRCEB to public;
grant update on TB_PRCEB to public; 
grant delete on TB_PRCEB to public;  
grant insert on TB_PRCEB to public; 
grant select on SEQ_TB_PRCEB to public;   

