
/*
20130711 add by gaoxl for ���ǣ�����PRCEC015~PRCEC018
*/
/*
================================================================================
��ṹ����:TB_PRCEC
��ṹ����:��Ʒ�������뵥����
��ṹĿ��:�ֲ���
================================================================================
*/

drop sequence SEQ_TB_PRCEC;
drop index AK_TB_PRCEC;
drop table TB_PRCEC;
create table TB_PRCEC  (
   PRCEC_ID           INTEGER              not null,      /* ���뵥��ID        */
   PRCEC001           INTEGER              not null,      /* ���뵥��id          */
   PRCEC002           VARCHAR2(30)         not null,      /* ���뵥��          */
   PRCEC003           DATE                 not null,      /* ��������            */
   PRCEC004           INTEGER              not null,      /* չλ��id            */
   PRCEC005           INTEGER,                            /* ���޺�ͬid              */
   PRCEC006           INTEGER,                            /* �̻�id            */
   PRCEC007           INTEGER,                            /* Ʒ��id              */
   PRCEC008           VARCHAR2(255),                      /* ��ע                */    
   PRCEC009           DATE,                               /* ¼������            */
   PRCEC010           INTEGER,                            /* ¼����id              */ 
   PRCEC011           DATE,                               /* �������            */
   PRCEC012           INTEGER,                            /* �����id              */   
   PRCEC013           VARCHAR2(1),                        /* ����״̬            */
   PRCEC014           INTEGER              not null,      /* Ӫ����֯id          */
   PRCEC015           VARCHAR2(1),                        /* �Ƿ񶩵���Ʒ            */
   PRCEC016           VARCHAR2(1),                        /* ��Ӫ��ʽ              */
   PRCEC017           VARCHAR2(30),                       /* ��ϵ��            */
   PRCEC018           VARCHAR2(30),                       /* ��ϵ�绰          */  
   PRCEC019           VARCHAR2(1),                        /* ���ǩ����            */   
   PRCEC020           VARCHAR2(1),                        /* �۸�����            */   
   signature          VARCHAR2(1),                        /* ǩ��״̬            */ 
   remark             VARCHAR2(255),                      /* ǩ�˱�ע                */        
   CREATE_USER        VARCHAR2(12),                       /* ������Ա            */
   USER_GROUP         VARCHAR2(12),                       /* ������Ա����        */                           
   CREATE_DATE        DATE,                               /* ��������            */
   MODIFIER           VARCHAR2(12),                       /* �޸���Ա            */
   MODI_DATE          DATE,                               /* �޸�����            */
   FLAG               NUMBER,                             /* ����״̬            */
   constraint PK_TB_PRCEC primary key (PRCEC_ID)
);
create unique index AK_TB_PRCEC on TB_PRCEC (PRCEC001, PRCEC002,FLAG);
create sequence SEQ_TB_PRCEC minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_PRCEC to public;
grant index  on TB_PRCEC to public;
grant update on TB_PRCEC to public; 
grant delete on TB_PRCEC to public;  
grant insert on TB_PRCEC to public; 
grant select on SEQ_TB_PRCEC to public;   

