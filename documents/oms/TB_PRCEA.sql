/*
20130716 add by gaoxl for ���� ��add PRCEA015~PRCEA019
*/
/*
================================================================================
��ṹ����:TB_PRCEA
��ṹ����:��Ʒ�ؼ����뵥����
��ṹĿ��:�ֲ���
================================================================================
*/

drop sequence SEQ_TB_PRCEA;
drop index AK_TB_PRCEA;
drop table TB_PRCEA;
create table TB_PRCEA  (
   PRCEA_ID           INTEGER              not null,      /* ���뵥��ID        */
   PRCEA001           INTEGER              not null,      /* ���뵥��id          */
   PRCEA002           VARCHAR2(30)         not null,      /* ���뵥��          */
   PRCEA003           DATE                 not null,      /* ��������            */
   PRCEA004           INTEGER              not null,      /* չλ��id            */
   PRCEA005           INTEGER,                            /* ���޺�ͬid              */
   PRCEA006           INTEGER,                            /* �̻�id            */
   PRCEA007           INTEGER,                            /* Ʒ��id              */
   PRCEA008           VARCHAR2(255),                      /* ����ԭ��                */
   PRCEA009           DATE,                               /* ¼������            */
   PRCEA010           INTEGER,                            /* ¼����id              */ 
   PRCEA011           DATE,                               /* �������            */
   PRCEA012           INTEGER,                            /* �����id              */   
   PRCEA013           VARCHAR2(1),                        /* ����״̬            */
   PRCEA014           INTEGER              not null,      /* Ӫ����֯id          */
   PRCEA015           VARCHAR2(1),                        /* ��Ӫ��ʽ             */ 
   PRCEA016           VARCHAR2(30),                        /* ��ϵ��               */ 
   PRCEA017           VARCHAR2(30),                        /* ��ϵ�绰             */ 
   PRCEA018           VARCHAR2(1),                        /* ���ǩ����           */
   PRCEA019           VARCHAR2(1),                        /* �۸�����             */
   signature          VARCHAR2(1),                        /* ǩ��״̬            */ 
   remark             VARCHAR2(255),                      /* ǩ�˱�ע                */        
   CREATE_USER        VARCHAR2(12),                       /* ������Ա            */
   USER_GROUP         VARCHAR2(12),                       /* ������Ա����        */                           
   CREATE_DATE        DATE,                               /* ��������            */
   MODIFIER           VARCHAR2(12),                       /* �޸���Ա            */
   MODI_DATE          DATE,                               /* �޸�����            */
   FLAG               NUMBER,                             /* ����״̬            */
   constraint PK_TB_PRCEA primary key (PRCEA_ID)
);
create unique index AK_TB_PRCEA on TB_PRCEA (PRCEA001, PRCEA002,FLAG);
create sequence SEQ_TB_PRCEA minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_PRCEA to public;
grant index  on TB_PRCEA to public;
grant update on TB_PRCEA to public; 
grant delete on TB_PRCEA to public;  
grant insert on TB_PRCEA to public; 
grant select on SEQ_TB_PRCEA to public;   

