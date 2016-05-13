/*
================================================================================
��ṹ����:TB_BILGB
��ṹ����:��������ۿ�ӱ�
��ṹĿ��:
================================================================================
*/

drop sequence SEQ_TB_BILGB;
drop index AK_TB_BILGB;
drop table TB_BILGB;
create table TB_BILGB  (
   BILGB_ID             INTEGER                         not null,  /*��������ۿ�ۿ�ID */
   BILGB001             INTEGER                         not null,  /*��������ۿID     */
   BILGB002             INTEGER                         not null,  /*̯λID               */
   BILGB003             INTEGER                         not null,  /*�̻�ID               */
   BILGB004             NUMBER(12,2),                              /*������             */ 
   BILGB005             NUMBER(12,2),                              /*���׽��             */ 
   BILGB006             NUMBER(12,2),                              /*�ۿ����%            */ 
   BILGB007             NUMBER(12,2),                              /*�ۿ���             */ 
   BILGB008             INTEGER,                                   /*���õ�ID             */ 
   BILGB009             VARCHAR2(60),                              /*˵��                 */
   BILGB010             INTEGER                         not null,  /*���޺�ͬID           */
   CREATE_USER          VARCHAR2(12),                              /*������Ա             */
   USER_GROUP           VARCHAR2(12),                              /*������Ա����         */                               
   CREATE_DATE          DATE,                                      /*��������             */
   MODIFIER             VARCHAR2(12),                              /*�޸���Ա             */
   MODI_DATE            DATE,                                      /*�޸�����             */
   FLAG                 NUMBER(1),                                 /*����״̬             */
   constraint PK_TB_BILGB primary key (BILGB_ID)
);
create unique index AK_TB_BILGB on TB_BILGB (BILGB001,BILGB002,BILGB003,BILGB010);
create sequence SEQ_TB_BILGB minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_BILGB to public;
grant index  on TB_BILGB to public;
grant update on TB_BILGB to public; 
grant delete on TB_BILGB to public;  
grant insert on TB_BILGB to public; 
grant select on SEQ_TB_BILGB to public;   