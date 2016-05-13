/*
================================================================================
��ṹ����:TB_CONDC
��ṹ����:��ͬ��ֹ�ʵ�������ϸ��
��ṹĿ��:
================================================================================
*/

drop sequence SEQ_TB_CONDC;
drop index AK_TB_CONDC;
drop table TB_CONDC;
create table TB_CONDC  (
   CONDC_ID             INTEGER                         not null,  /*��ͬ��ֹ�ʵ�������ϸID */
   CONDC001             INTEGER                         not null,  /*��ͬ��ֹID          */
   CONDC002             INTEGER                         not null,  /*��ͬ��ֹ�����ʵ�ID  */
   CONDC003             INTEGER                         not null,  /*����ID              */
   CONDC004             DATE                            not null,  /*�ʵ�����            */
   CONDC005             NUMBER(12,2)                    not null,  /*��Ӫ���            */
   CONDC006             NUMBER(12,2)                    not null,  /*��׼��              */
   CONDC007             NUMBER(12,2)                    not null,  /*��׼��λ            */
   CONDC008             NUMBER(12,4)                    not null,  /*���ý��            */
   CONDC009             NUMBER(12,2),                              /*�������            */
   CONDC010             NUMBER(12,2),                              /*�������            */
   CREATE_USER          VARCHAR2(12),                              /*������Ա            */
   USER_GROUP           VARCHAR2(12),                              /*������Ա����        */                               
   CREATE_DATE          DATE,                                      /*��������            */
   MODIFIER             VARCHAR2(12),                              /*�޸���Ա            */
   MODI_DATE            DATE,                                      /*�޸�����            */
   FLAG                 NUMBER(1),                                 /*����״̬            */
   constraint PK_TB_CONDC primary key (CONDC_ID)
);
create unique index AK_TB_CONDC on TB_CONDC (CONDC001,CONDC002,CONDC003,CONDC004);
create sequence SEQ_TB_CONDC minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_CONDC to public;
grant index  on TB_CONDC to public;
grant update on TB_CONDC to public; 
grant delete on TB_CONDC to public;  
grant insert on TB_CONDC to public; 
grant select on SEQ_TB_CONDC to public;   