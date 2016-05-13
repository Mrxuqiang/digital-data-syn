/*
================================================================================
��ṹ����:TB_ASSBC
��ṹ����:��������
��ṹĿ��:
================================================================================
*/

drop sequence SEQ_TB_ASSBC;
drop index AK_TB_ASSBC;
drop table TB_ASSBC;
create table TB_ASSBC  (
   ASSBC_ID             INTEGER                         not null,   /*��������ID   */
   ASSBC001             VARCHAR2(6)                     not null,   /*��������     */
   ASSBC002             INTEGER                         not null,   /*��ƬID     */
   ASSBC003             VARCHAR2(30)                    not null,   /*�ʲ����     */
   ASSBC004             VARCHAR2(60)                    not null,   /*�ʲ�����     */
   ASSBC005             NUMBER(18,3),                               /*��������     */
   ASSBC006             NUMBER(18,3),                               /*���¹�����   */
   ASSBC007             NUMBER(18,3),                               /*���¹�����   */
   ASSBC008             NUMBER(18,3),                               /*�ۼƹ�����   */
   ASSBC009             NUMBER(18,3),                               /*ʣ�๤����   */
   CREATE_USER          VARCHAR2(12),                               /*������Ա               */
   USER_GROUP           VARCHAR2(12),                               /*������Ա����           */                               
   CREATE_DATE          DATE,                                       /*��������               */
   MODIFIER             VARCHAR2(12),                               /*�޸���Ա               */
   MODI_DATE            DATE,                                       /*�޸�����               */
   FLAG                 NUMBER(1),                                  /*����״̬               */
   constraint PK_TB_ASSBC primary key (ASSBC_ID)
);
create unique index AK_TB_ASSBC on TB_ASSBC (ASSBC001,ASSBC002);
create sequence SEQ_TB_ASSBC minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_ASSBC to public;
grant index  on TB_ASSBC to public;
grant update on TB_ASSBC to public; 
grant delete on TB_ASSBC to public;  
grant insert on TB_ASSBC to public; 
grant select on SEQ_TB_ASSBC to public;   