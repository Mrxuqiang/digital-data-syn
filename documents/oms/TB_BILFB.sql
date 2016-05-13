/*
================================================================================
��ṹ����:TB_BILFB
��ṹ����:�������÷�̯��������
��ṹĿ��:
================================================================================
*/

drop sequence SEQ_TB_BILFB;
drop index AK_TB_BILFB;
drop table TB_BILFB;
create table TB_BILFB  (
   BILFB_ID             INTEGER                         not null,  /*�������÷�̯������ID */
   BILFB001             INTEGER                         not null,  /*�������÷�̯��ID     */
   BILFB002             VARCHAR2(1)                     not null,  /*��������             */
   BILFB003             INTEGER                         not null,  /*������ID             */
   BILFB004             VARCHAR2(30),                               /*��������             */
   BILFB005             VARCHAR2(255),                              /*��������             */
   CREATE_USER          VARCHAR2(12),                              /*������Ա             */
   USER_GROUP           VARCHAR2(12),                              /*������Ա����         */                               
   CREATE_DATE          DATE,                                      /*��������             */
   MODIFIER             VARCHAR2(12),                              /*�޸���Ա             */
   MODI_DATE            DATE,                                      /*�޸�����             */
   FLAG                 NUMBER(1),                                 /*����״̬             */
   constraint PK_TB_BILFB primary key (BILFB_ID)
);
create unique index AK_TB_BILFB on TB_BILFB (BILFB001,BILFB002,BILFB003);
create sequence SEQ_TB_BILFB minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_BILFB to public;
grant index  on TB_BILFB to public;
grant update on TB_BILFB to public; 
grant delete on TB_BILFB to public;  
grant insert on TB_BILFB to public;
grant select on SEQ_TB_BILFB to public;   