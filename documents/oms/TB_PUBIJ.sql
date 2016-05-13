/*
================================================================================
��ṹ����:TB_PUBIJ
��ṹ����:̯λͼ����ɫ����
��ṹĿ��:
================================================================================
*/

drop sequence SEQ_TB_PUBIJ;
drop index AK_TB_PUBIJ;
drop table TB_PUBIJ;
create table TB_PUBIJ  (
   PUBIJ_ID             INTEGER                         not null,  /*̯λͼ����ɫID             */
   PUBIJ001             VARCHAR2(2)                     not null,  /*״̬��Ŀ                   */
   PUBIJ002             VARCHAR2(20)                    not null,  /*״ֵ̬                     */
   PUBIJ003             INTEGER                         not null,  /*��ɫ                       */
   CREATE_USER          VARCHAR2(12),                              /*������Ա			*/
   USER_GROUP           VARCHAR2(12),                              /*������Ա����		*/                               
   CREATE_DATE          DATE,                                      /*��������			*/
   MODIFIER             VARCHAR2(12),                              /*�޸���Ա			*/
   MODI_DATE            DATE,                                      /*�޸�����			*/
   FLAG                 NUMBER(1),                                 /*����״̬			*/
   constraint PK_TB_PUBIJ primary key (PUBIJ_ID)
);
create unique index AK_TB_PUBIJ on TB_PUBIJ (PUBIJ001,PUBIJ002);
create sequence SEQ_TB_PUBIJ minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_PUBIJ to public;
grant index  on TB_PUBIJ to public;
grant update on TB_PUBIJ to public; 
grant delete on TB_PUBIJ to public;  
grant insert on TB_PUBIJ to public; 
grant select on SEQ_TB_PUBIJ to public;   