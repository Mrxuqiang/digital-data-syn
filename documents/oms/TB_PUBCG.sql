/*
================================================================================
��ṹ����:TB_PUBCG
��ṹ����:�������Ա�
��ṹĿ��:
================================================================================
*/

drop sequence SEQ_TB_PUBCG;
drop index AK_TB_PUBCG;
drop table TB_PUBCG;
create table TB_PUBCG  (
   PUBCG_ID             INTEGER                         not null,  /*��������ID                 */
   PUBCG001             VARCHAR2(4)                     not null,  /*�������Դ���               */
   PUBCG002             VARCHAR2(20)                    not null,  /*������������               */
   CREATE_USER          VARCHAR2(12),                              /*������Ա			*/
   USER_GROUP           VARCHAR2(12),                              /*������Ա����		*/                               
   CREATE_DATE          DATE,                                      /*��������			*/
   MODIFIER             VARCHAR2(12),                              /*�޸���Ա			*/
   MODI_DATE            DATE,                                      /*�޸�����			*/
   FLAG                 NUMBER(1),                                 /*����״̬			*/
   constraint PK_TB_PUBCG primary key (PUBCG_ID)
);
create unique index AK_TB_PUBCG on TB_PUBCG (PUBCG001);
create sequence SEQ_TB_PUBCG minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_PUBCG to public;
grant index  on TB_PUBCG to public;
grant update on TB_PUBCG to public; 
grant delete on TB_PUBCG to public;  
grant insert on TB_PUBCG to public; 
grant select on SEQ_TB_PUBCG to public;   