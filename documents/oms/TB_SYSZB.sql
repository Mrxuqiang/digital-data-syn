/*
================================================================================
��ṹ����:TB_SYSZB
��ṹ����:��������SQL��ϸ��
��ṹĿ��:�洢���������ģ������ı�����������Ϣ
================================================================================
*/

drop sequence SEQ_TB_SYSZB;
drop index AK_TB_SYSZB;
drop table TB_SYSZB;
create table TB_SYSZB  (
   SYSZB_ID              INTEGER                              not null,             /*��������ϸ��ID            */
   SYSZB001              INTEGER                              not null,             /*����������ID              */
   SYSZB002              VARCHAR2(30)                         not null,             /*�ֶδ���                  */
   SYSZB003              VARCHAR2(30)                         not null,             /*��������                  */
   SYSZB004              INTEGER                              not null,             /*�Ƿ����                  */
   SYSZB005              VARCHAR2(60)                         not null,             /*�ֶ�����                  */
   constraint PK_TB_SYSZB primary key (SYSZB_ID)
);
create unique index AK_TB_SYSZB on TB_SYSZB (SYSZB001,SYSZB002);
create sequence SEQ_TB_SYSZB minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_SYSZB to public;
grant index  on TB_SYSZB to public;
grant update on TB_SYSZB to public;
grant delete on TB_SYSZB to public;
grant insert on TB_SYSZB to public;
grant select on SEQ_TB_SYSZB to public;