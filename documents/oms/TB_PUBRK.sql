/*
================================================================================
��ṹ����:TB_PUBRK
��ṹ����:���˹��򱾷���
��ṹĿ��:
================================================================================
*/

drop sequence SEQ_TB_PUBRK;
drop index AK_TB_PUBRK;
drop table TB_PUBRK;
create table TB_PUBRK  (
   PUBRK_ID             INTEGER                         not null,  /*���˹��򱾷�ID     */
   PUBRK001             INTEGER                         not null,  /*���˹�����ID       */
   PUBRK002             INTEGER                         not null,  /*��ƿ�ĿID         */
   CREATE_USER          VARCHAR2(12),                              /*������Ա           */
   USER_GROUP           VARCHAR2(12),                              /*������Ա����       */                               
   CREATE_DATE          DATE,                                      /*��������           */
   MODIFIER             VARCHAR2(12),                              /*�޸���Ա           */
   MODI_DATE            DATE,                                      /*�޸�����           */
   FLAG                 NUMBER(1),                                 /*����״̬           */
   constraint PK_TB_PUBRK primary key (PUBRK_ID)
);
create unique index AK_TB_PUBRK on TB_PUBRK (PUBRK001,PUBRK002);
create sequence SEQ_TB_PUBRK minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_PUBRK to public;
grant index  on TB_PUBRK to public;
grant update on TB_PUBRK to public; 
grant delete on TB_PUBRK to public;  
grant insert on TB_PUBRK to public; 
grant select on SEQ_TB_PUBRK to public;   