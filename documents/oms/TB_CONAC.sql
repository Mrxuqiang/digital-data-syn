/*
================================================================================
��ṹ����:TB_CONAC
��ṹ����:���ñ�����׼�ӱ�
��ṹĿ��:
================================================================================
*/

drop sequence SEQ_TB_CONAC;
drop index AK_TB_CONAC;
drop table TB_CONAC;
create table TB_CONAC  (
   CONAC_ID             INTEGER                         not null,  /*���ñ�����׼�ֶ�ID  */
   CONAC001             INTEGER                         not null,  /*���ñ�����׼ID      */
   CONAC002             NUMBER(12,2)                    not null,  /*��׼��              */
   CONAC003             NUMBER(12,2),                              /*��׼ֹ              */
   CONAC004             NUMBER(12,2)                    not null,  /*��׼����(%)         */
   CREATE_USER          VARCHAR2(12),                              /*������Ա            */
   USER_GROUP           VARCHAR2(12),                              /*������Ա����        */                               
   CREATE_DATE          DATE,                                      /*��������            */
   MODIFIER             VARCHAR2(12),                              /*�޸���Ա            */
   MODI_DATE            DATE,                                      /*�޸�����            */
   FLAG                 NUMBER(1),                                 /*����״̬            */
   constraint PK_TB_CONAC primary key (CONAC_ID)
);
create unique index AK_TB_CONAC on TB_CONAC (CONAC001,CONAC002);
create sequence SEQ_TB_CONAC minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_CONAC to public;
grant index  on TB_CONAC to public;
grant update on TB_CONAC to public; 
grant delete on TB_CONAC to public;  
grant insert on TB_CONAC to public; 
grant select on SEQ_TB_CONAC to public;   