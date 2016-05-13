/*
20130716 modi by gaoxl for ���ǣ�����PRCEE015~PRCEE019
*/
/*
================================================================================
��ṹ����:TB_PRCEE
��ṹ����:��Ʒ�ؼ����뵥����
��ṹĿ��:�ֲ���
================================================================================
*/

drop sequence SEQ_TB_PRCEE;
drop index AK_TB_PRCEE;
drop table TB_PRCEE;
create table TB_PRCEE  (
   PRCEE_ID           INTEGER              not null,      /* ���뵥��ID        */
   PRCEE001           INTEGER              not null,      /* ���뵥��id          */
   PRCEE002           VARCHAR2(30)         not null,      /* ���뵥��          */
   PRCEE003           DATE                 not null,      /* ��������            */
   PRCEE004           INTEGER              not null,      /* չλ��id            */
   PRCEE005           INTEGER,                            /* ���޺�ͬid              */
   PRCEE006           INTEGER,                            /* �̻�id            */
   PRCEE007           INTEGER,                            /* Ʒ��id              */
   PRCEE008           VARCHAR2(255),                      /* ����ԭ��                */
   PRCEE009           DATE,                               /* ¼������            */
   PRCEE010           INTEGER,                            /* ¼����id              */ 
   PRCEE011           DATE,                               /* �������            */
   PRCEE012           INTEGER,                            /* �����id              */   
   PRCEE013           VARCHAR2(1),                        /* ����״̬            */
   PRCEE014           INTEGER              not null,      /* Ӫ����֯id          */
   PRCEE015           VARCHAR2(1),                        /* ��Ӫ��ʽ              */
   PRCEE016           VARCHAR2(30),                       /* ��ϵ��                */
   PRCEE017           VARCHAR2(30),                       /* ��ϵ�绰              */
   PRCEE018           VARCHAR2(1),                        /* ���ǩ����            */
   PRCEE019           VARCHAR2(1),                        /* �۸�����              */
   signature          VARCHAR2(1),                        /* ǩ��״̬            */ 
   remark             VARCHAR2(255),                      /* ǩ�˱�ע                */        
   CREATE_USER        VARCHAR2(12),                       /* ������Ա            */
   USER_GROUP         VARCHAR2(12),                       /* ������Ա����        */                           
   CREATE_DATE        DATE,                               /* ��������            */
   MODIFIER           VARCHAR2(12),                       /* �޸���Ա            */
   MODI_DATE          DATE,                               /* �޸�����            */
   FLAG               NUMBER,                             /* ����״̬            */
   constraint PK_TB_PRCEE primary key (PRCEE_ID)
);
create unique index AK_TB_PRCEE on TB_PRCEE (PRCEE001, PRCEE002,FLAG);
create sequence SEQ_TB_PRCEE minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_PRCEE to public;
grant index  on TB_PRCEE to public;
grant update on TB_PRCEE to public; 
grant delete on TB_PRCEE to public;  
grant insert on TB_PRCEE to public; 
grant select on SEQ_TB_PRCEE to public;   

