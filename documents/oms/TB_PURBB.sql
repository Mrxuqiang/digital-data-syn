/*
================================================================================
��ṹ����:TB_PURBB
��ṹ����:Ҫ�����ӱ�
��ṹĿ��:
================================================================================
*/

drop sequence SEQ_TB_PURBB;
drop index AK_TB_PURBB;
drop table TB_PURBB;
create table TB_PURBB  (
   PURBB_ID             INTEGER                         not null,  /*Ҫ������ƷID        */
   PURBB001             INTEGER                         not null,  /*Ҫ����ID            */
   PURBB002             INTEGER					   /*��Դ��ϸID              */
   PURBB003             INTEGER,                                   /*��Ʒ����ID          */
   PURBB004             INTEGER                         not null,  /*��ƷID              */
   PURBB005             INTEGER                         not null,  /*Ҫ����λID          */
   PURBB006             NUMBER(12,2)                    not null,  /*��λ������          */
   PURBB007             INTEGER                         not null,  /*��Ӧ��ID            */
   PURBB008             VARCHAR2(1)                     not null,  /*��Ӫ��ʽ            */
   PURBB009             VARCHAR2(1)                     not null,  /*���䷽ʽ            */
   PURBB010             INTEGER,                                   /*ά��1ID             */
   PURBB011             INTEGER,                                   /*ά��2ID             */
   PURBB012             INTEGER,                                   /*ά��3ID             */
   PURBB013             INTEGER,                                   /*ά��4ID             */
   PURBB014             INTEGER,                                   /*ά��5ID             */
   PURBB015             NUMBER(18,3),                              /*Ҫ����              */
   PURBB016             NUMBER(18,3),                              /*�Ѳ���              */
   PURBB017             NUMBER(18,3),                              /*������              */
   PURBB018             NUMBER(18,3),                              /*������              */
   PURBB019             DATE,                                      /*�ͻ�����            */
   PURBB020             VARCHAR2(1),                               /*�᰸��              */
   PURBB021             VARCHAR2(255),                             /*��ע                */
   PURBB022            VARCHAR2(1),                               /*��Ʒ��������*/
   PURBB023            NUMBER(18,3),                              /*δ������             */
   PURBB024            NUMBER(18,3),                              /*ȡ����               */ 
   PURBB025            VARCHAR2(1),                               /*�Ƿ�����Ʒ         */
   PURBB026            INTEGER,                                   /*����          */
   CREATE_USER          VARCHAR2(12),                              /*������Ա            */
   USER_GROUP           VARCHAR2(12),                              /*������Ա����        */                               
   CREATE_DATE          DATE,                                      /*��������            */
   MODIFIER             VARCHAR2(12),                              /*�޸���Ա            */
   MODI_DATE            DATE,                                      /*�޸�����            */
   FLAG                 NUMBER(1),                                 /*����״̬            */
   constraint PK_TB_PURBB primary key (PURBB_ID)
);
create unique index AK_TB_PURBB on TB_PURBB (PURBB_ID,PURBB004);
create sequence SEQ_TB_PURBB minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_PURBB to public;
grant index  on TB_PURBB to public;
grant update on TB_PURBB to public; 
grant delete on TB_PURBB to public;  
grant insert on TB_PURBB to public; 
grant select on SEQ_TB_PURBB to public;   