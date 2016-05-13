/*
================================================================================
��ṹ����:TB_PUBLD
��ṹ����:����ڼ伾�ȱ�
��ṹĿ��:
================================================================================
*/

drop sequence SEQ_TB_PUBLD;
drop index AK_TB_PUBLD;
drop table TB_PUBLD;
create table TB_PUBLD  (
   PUBLD_ID             INTEGER                         not null,  /*����ڼ伾��ID   */
   PUBLD001             INTEGER                         not null,  /*����ڼ�ID       */
   PUBLD002             NUMBER(2)                       not null,  /*��Ƽ���         */
   PUBLD003             NUMBER(2)                       not null,  /*��ʼ�·�         */
   PUBLD004             NUMBER(2)                       not null,  /*�����·�         */
   CREATE_USER          VARCHAR2(12),                              /*������Ա         */
   USER_GROUP           VARCHAR2(12),                              /*������Ա����     */                               
   CREATE_DATE          DATE,                                      /*��������         */
   MODIFIER             VARCHAR2(12),                              /*�޸���Ա         */
   MODI_DATE            DATE,                                      /*�޸�����         */
   FLAG                 NUMBER(1),                                 /*����״̬         */
   constraint PK_TB_PUBLD primary key (PUBLD_ID)
);
create unique index AK_TB_PUBLD on TB_PUBLD (PUBLD001,PUBLD002);
create sequence SEQ_TB_PUBLD minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_PUBLD to public;
grant index  on TB_PUBLD to public;
grant update on TB_PUBLD to public; 
grant delete on TB_PUBLD to public;  
grant insert on TB_PUBLD to public; 
grant select on SEQ_TB_PUBLD to public;   