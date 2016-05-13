/*
================================================================================
��ṹ����:TB_SUPCB
��ṹ����:�̻�������ϵ���̱�
��ṹĿ��:
================================================================================
*/

drop sequence SEQ_TB_SUPCB;
drop index AK_TB_SUPCB;
drop table TB_SUPCB;
create table TB_SUPCB  (
   SUPCB_ID             INTEGER                         not null,  /*������ϵID          */
   SUPCB001             INTEGER                         not null,  /*�̻�����ID          */
   SUPCB002             DATE                            not null,  /*��������            */
   SUPCB003             INTEGER                         not null,  /*������ID            */
   SUPCB004             VARCHAR2(255),                             /*��ͨ����            */
   SUPCB005             VARCHAR2(255),                             /*��ͨ���            */
   SUPCB006             DATE,                                      /*�´���ϵ����        */
   SUPCB007             VARCHAR2(255),                             /*�´���ϵĿ��        */
   CREATE_USER          VARCHAR2(12),                              /*������Ա            */
   USER_GROUP           VARCHAR2(12),                              /*������Ա����        */                               
   CREATE_DATE          DATE,                                      /*��������            */
   MODIFIER             VARCHAR2(12),                              /*�޸���Ա            */
   MODI_DATE            DATE,                                      /*�޸�����            */
   FLAG                 NUMBER(1),                                 /*����״̬            */
   constraint PK_TB_SUPCB primary key (SUPCB_ID)
);
create unique index AK_TB_SUPCB on TB_SUPCB (SUPCB_ID,SUPCB001);
create sequence SEQ_TB_SUPCB minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_SUPCB to public;
grant index  on TB_SUPCB to public;
grant update on TB_SUPCB to public; 
grant delete on TB_SUPCB to public;  
grant insert on TB_SUPCB to public; 
grant select on SEQ_TB_SUPCB to public;   