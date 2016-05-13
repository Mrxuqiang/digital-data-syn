/*
================================================================================
��ṹ����:TB_SYSHA
��ṹ����:���ݷ���Ȩ��������
��ṹĿ��:
================================================================================
*/

drop sequence SEQ_TB_SYSHA;
drop index AK_TB_SYSHA;
drop table TB_SYSHA;
create table TB_SYSHA  (
   SYSHA_ID             INTEGER                          not null, /*����Ȩ����ID     */
   SYSHA001             VARCHAR2(14)                     not null, /*����Ȩ�������   */
   SYSHA002             VARCHAR2(30),                              /*����Ȩ��������   */
   SYSHA003             VARCHAR2(255),                             /*��ע             */
   SYSHA004             VARCHAR2(2),                               /*Ԥ��             */
   CREATE_USER          VARCHAR2(12),                              /*������Ա         */
   USER_GROUP           VARCHAR2(12),                              /*������Ա����     */                               
   CREATE_DATE          DATE,                                      /*��������         */
   MODIFIER             VARCHAR2(12),                              /*�޸���Ա         */
   MODI_DATE            DATE,                                      /*�޸�����         */
   FLAG                 NUMBER,                                 /*����״̬         */
   constraint PK_TB_SYSHA primary key (SYSHA_ID)
);
create unique index AK_TB_SYSHA on TB_SYSHA (SYSHA001);
create sequence SEQ_TB_SYSHA minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_SYSHA to public;
grant index  on TB_SYSHA to public;
grant update on TB_SYSHA to public; 
grant delete on TB_SYSHA to public;  
grant insert on TB_SYSHA to public; 
grant select on SEQ_TB_SYSHA to public;   