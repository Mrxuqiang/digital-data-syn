/*
================================================================================
��ṹ����:TB_BILLB
��ṹ����:���ʦ������ϸ��
��ṹĿ��:�ֲ���
================================================================================
*/

drop sequence SEQ_TB_BILLB;
drop index AK_TB_BILLB;
drop table TB_BILLB;
create table TB_BILLB  (
   BILLB_ID             INTEGER                         not null,     /*���ʦ������ϸID  */        
   BILLB001             INTEGER                         not null,     /*���ʦ���˵�ID    */        
   BILLB002             VARCHAR2(1)                     not null,     /*��������          */        
   BILLB003             INTEGER                         not null,     /*��Դ����ID        */        
   BILLB004             VARCHAR2(30)                    not null,     /*��Դ����          */        
   BILLB005             INTEGER                         not null,     /*ǩ��ID            */ 
   BILLB006             NUMBER(12,2)                    not null,     /*���۽��          */                
   CREATE_USER          VARCHAR2(12),                                 /*������Ա          */
   USER_GROUP           VARCHAR2(12),                                 /*������Ա����      */                               
   CREATE_DATE          DATE,                                         /*��������          */
   MODIFIER             VARCHAR2(12),                                 /*�޸���Ա          */
   MODI_DATE            DATE,                                         /*�޸�����          */
   FLAG                 NUMBER,                                       /*����״̬          */
   constraint PK_TB_BILLB primary key (BILLB_ID)
);
create unique index AK_TB_BILLB on TB_BILLB (BILLB002,BILLB003,BILLB005,FLAG);
create sequence SEQ_TB_BILLB minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_BILLB to public;
grant index  on TB_BILLB to public;
grant update on TB_BILLB to public; 
grant delete on TB_BILLB to public;  
grant insert on TB_BILLB to public; 
grant select on SEQ_TB_BILLB to public;   