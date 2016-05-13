/*
================================================================================
��ṹ����:TB_SERHI
��ṹ����:��ͬ��������Ϣת�Ʊ�
��ṹĿ��:�ֲ���
================================================================================
*/

drop sequence SEQ_TB_SERHI;
drop index AK_TB_SERHI;
drop table TB_SERHI;
create table TB_SERHI  (
   SERHI_ID           INTEGER              not null,      /* ��ͬ������ID        */
   SERHI001           INTEGER              not null,      /* ��ͬ��ǩת�Ƶ�ID  */
   SERHI002           INTEGER,                            /* չλID            */
   SERHI003           INTEGER,                            /* �̻�ID            */
   SERHI004           INTEGER,                            /* Ʒ��ID            */
   SERHI005           INTEGER,                            /* ϵ��ID            */
   SERHI006           INTEGER,                            /* ��ͬID            */
   SERHI007           VARCHAR2(1000),                     /* ������            */
   SERHI008           VARCHAR2(1000),                     /* ��������ַ        */ 
   SERHI009           VARCHAR2(1000),                     /* �������绰        */   
   CREATE_USER        VARCHAR2(12),                       /* ������Ա          */
   USER_GROUP         VARCHAR2(12),                       /* ������Ա����      */                           
   CREATE_DATE        DATE,                               /* ��������          */
   MODIFIER           VARCHAR2(12),                       /* �޸���Ա          */
   MODI_DATE          DATE,                               /* �޸�����          */
   FLAG               NUMBER,                             /* ����״̬          */
   constraint PK_TB_SERHI primary key (SERHI_ID)
);
create unique index AK_TB_SERHI on TB_SERHI (SERHI002,SERHI003,SERHI004,SERHI005,SERHI006);
create sequence SEQ_TB_SERHI minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_SERHI to public;
grant index  on TB_SERHI to public;
grant update on TB_SERHI to public; 
grant delete on TB_SERHI to public;  
grant insert on TB_SERHI to public; 
grant select on SEQ_TB_SERHI to public;   