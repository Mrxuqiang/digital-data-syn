/*
================================================================================
��ṹ����:TB_SYSGB
��ṹ����:�ӿڹ�����Ӧ��
��ṹĿ��:
================================================================================
*/

drop sequence SEQ_TB_SYSGB;
drop index AK_TB_SYSGB;
drop table TB_SYSGB;
create table TB_SYSGB  (
   SYSGB_ID             INTEGER                         not null,  /*�ӿڹ�����ӦID */
   SYSGB001             INTEGER                         not null,  /*�ӿڹ���ID       */
   SYSGB002             VARCHAR2(30)                    not null,  /*���շ�����       */
   SYSGB003             VARCHAR2(30)                    not null,  /*��Դ������       */
   CREATE_USER          VARCHAR2(12),                              /*������Ա         */
   USER_GROUP           VARCHAR2(12),                              /*������Ա����     */                               
   CREATE_DATE          DATE,                                      /*��������         */
   MODIFIER             VARCHAR2(12),                              /*�޸���Ա         */
   MODI_DATE            DATE,                                      /*�޸�����         */
   FLAG                 NUMBER(1),                                 /*����״̬         */
   constraint PK_TB_SYSGB primary key (SYSGB_ID)
);
create unique index AK_TB_SYSGB on TB_SYSGB (SYSGB001,SYSGB002);
create sequence SEQ_TB_SYSGB minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_SYSGB to public;
grant index  on TB_SYSGB to public;
grant update on TB_SYSGB to public; 
grant delete on TB_SYSGB to public;  
grant insert on TB_SYSGB to public; 
grant select on SEQ_TB_SYSGB to public;   