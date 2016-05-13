/*
20130716 modi by gaoxl for ���ǣ�����SERHG013~SERHG025��mark SERHG003��SERHG008��SERHG011
*/
/*
================================================================================
��ṹ����:TB_SERHG
��ṹ����:���ǩ��ӡ�����ӱ�
��ṹĿ��:�ֲ���
================================================================================
*/

drop sequence SEQ_TB_SERHG;
drop index AK_TB_SERHG;
drop table TB_SERHG;
create table TB_SERHG  (
   SERHG_ID           INTEGER              not null,      /* ���뵥��ID        */
   SERHG001           INTEGER              not null,      /* ���뵥��id        */
   SERHG002           INTEGER              not null,      /* ��Ʒid            */
   SERHG003           VARCHAR2(80),                       /* ����              */
   SERHG004           VARCHAR2(40),                       /* �ͺ�              */
   SERHG005           VARCHAR2(80)                        /* ���              */
   SERHG006           INTEGER,                            /* ��λid            */
   SERHG007           INTEGER,                            /* �ȼ�id            */
   SERHG008           VARCHAR2(256),                      /* ����              */
   SERHG009           NUMBER,                             /* ���ǩ����         */
   SERHG010           NUMBER(28,2),                       /* ԭ�ۼ�             */ 
   SERHG011           NUMBER(28,2),                       /* ���ۼ�            */
   SERHG012           VARCHAR2(255),                      /* ��ע               */
   SERHG013           VARCHAR2(20),                       /* ���Ա               */
   SERHG014           INTEGER,                            /* ��Ʒ����ID         */     
   SERHG015           VARCHAR2(80),                       /* ����               */  
   SERHG016           VARCHAR2(80),                       /* ����               */  
   SERHG017           VARCHAR2(80),                       /* ����               */  
   SERHG018           INTEGER,                            /* �Զ������1         */  
   SERHG019           INTEGER,                            /* �Զ������2         */  
   SERHG020           INTEGER,                            /* �Զ������3         */  
   SERHG021           INTEGER),                           /* �Զ������4         */  
   SERHG022           INTEGER,                            /* �Զ������5         */  
   SERHG023           INTEGER,                            /* �Զ������6         */  
   SERHG024           INTEGER,                            /* �Զ������7         */  
   SERHG025           INTEGER,                            /* �Զ������8         */          
   CREATE_USER        VARCHAR2(12),                       /* ������Ա            */
   USER_GROUP         VARCHAR2(12),                       /* ������Ա����        */                           
   CREATE_DATE        DATE,                               /* ��������            */
   MODIFIER           VARCHAR2(12),                       /* �޸���Ա            */
   MODI_DATE          DATE,                               /* �޸�����            */
   FLAG               NUMBER,                             /* ����״̬            */
   constraint PK_TB_SERHG primary key (SERHG_ID)
);
create unique index AK_TB_SERHG on TB_SERHG (SERHG001,SERHG002,FLAG);
create sequence SEQ_TB_SERHG minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_SERHG to public;
grant index  on TB_SERHG to public;
grant update on TB_SERHG to public; 
grant delete on TB_SERHG to public;  
grant insert on TB_SERHG to public; 
grant select on SEQ_TB_SERHG to public;   

