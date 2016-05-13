/*
================================================================================
��ṹ����:TB_PUBHP
��ṹ����:Ʒ�ƾ�ӪС���ӱ�
��ṹĿ��:
================================================================================
*/

drop sequence SEQ_TB_PUBHP;
drop index AK_TB_PUBHP;
drop table TB_PUBHP;
create table TB_PUBHP  (
   PUBHP_ID             INTEGER                         not null,  /*Ʒ�ƾ�ӪС��ID     */
   PUBHP001             INTEGER                         not null,  /*Ʒ��ID             */
   PUBHP002             INTEGER                         not null,  /*��ӪС��ID         */
   CREATE_USER          VARCHAR2(12),                              /*������Ա           */
   USER_GROUP           VARCHAR2(12),                              /*������Ա����       */                               
   CREATE_DATE          DATE,                                      /*��������           */
   MODIFIER             VARCHAR2(12),                              /*�޸���Ա           */
   MODI_DATE            DATE,                                      /*�޸�����           */
   FLAG                 NUMBER(1),                                 /*����״̬           */
   constraint PK_TB_PUBHP primary key (PUBHP_ID)
);
create unique index AK_TB_PUBHP on TB_PUBHP (PUBHP001,PUBHP002);
create sequence SEQ_TB_PUBHP minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_PUBHP to public;
grant index  on TB_PUBHP to public;
grant update on TB_PUBHP to public; 
grant delete on TB_PUBHP to public;  
grant insert on TB_PUBHP to public; 
grant select on SEQ_TB_PUBHP to public;   