/*
================================================================================
��ṹ����:TB_PUBHJ
��ṹ����:��Ʒ��װ��Ϣ��
��ṹĿ��:
================================================================================
*/

drop sequence SEQ_TB_PUBHJ;
drop index AK_TB_PUBHJ;
drop table TB_PUBHJ;
create table TB_PUBHJ  (
   PUBHJ_ID             INTEGER                         not null,  /*��װ��ID          */
   PUBHJ001             INTEGER                         not null,  /*��ƷID            */
   PUBHJ002             INTEGER                         not null,  /*��װ�ɷ���ƷID    */
   PUBHJ003             INTEGER                         not null,  /*�ɷ�����          */
   CREATE_USER          VARCHAR2(12),                              /*������Ա          */
   USER_GROUP           VARCHAR2(12),                              /*������Ա����      */                               
   CREATE_DATE          DATE,                                      /*��������          */
   MODIFIER             VARCHAR2(12),                              /*�޸���Ա          */
   MODI_DATE            DATE,                                      /*�޸�����          */
   FLAG                 NUMBER(1),                                 /*����״̬          */
   constraint PK_TB_PUBHJ primary key (PUBHJ_ID)
);
create unique index AK_TB_PUBHJ on TB_PUBHJ (PUBHJ001,PUBHJ002);
create sequence SEQ_TB_PUBHJ minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_PUBHJ to public;
grant index  on TB_PUBHJ to public;
grant update on TB_PUBHJ to public; 
grant delete on TB_PUBHJ to public;  
grant insert on TB_PUBHJ to public; 
grant select on SEQ_TB_PUBHJ to public;   