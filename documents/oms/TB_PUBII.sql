/*
================================================================================
��ṹ����:TB_PUBII
��ṹ����:̯λ�����
��ṹĿ��:
================================================================================
*/

drop sequence SEQ_TB_PUBII;
drop index AK_TB_PUBII;
drop table TB_PUBII;
create table TB_PUBII  (
   PUBII_ID             INTEGER                         not null,  /*̯λ����ID                 */
   PUBII001             VARCHAR2(4)                     not null,  /*̯λ�������               */
   PUBII002             VARCHAR2(20)                    not null,  /*̯λ��������               */
   CREATE_USER          VARCHAR2(12),                              /*������Ա			*/
   USER_GROUP           VARCHAR2(12),                              /*������Ա����		*/                               
   CREATE_DATE          DATE,                                      /*��������			*/
   MODIFIER             VARCHAR2(12),                              /*�޸���Ա			*/
   MODI_DATE            DATE,                                      /*�޸�����			*/
   FLAG                 NUMBER(1),                                 /*����״̬			*/
   constraint PK_TB_PUBII primary key (PUBII_ID)
);
create unique index AK_TB_PUBII on TB_PUBII (PUBII001);
create sequence SEQ_TB_PUBII minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_PUBII to public;
grant index  on TB_PUBII to public;
grant update on TB_PUBII to public; 
grant delete on TB_PUBII to public;  
grant insert on TB_PUBII to public; 
grant select on SEQ_TB_PUBII to public;   