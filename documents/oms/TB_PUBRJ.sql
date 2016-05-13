/*
================================================================================
��ṹ����:TB_PUBRJ
��ṹ����:���˹�������
��ṹĿ��:
================================================================================
*/

drop sequence SEQ_TB_PUBRJ;
drop index AK_TB_PUBRJ;
drop table TB_PUBRJ;
create table TB_PUBRJ  (
   PUBRJ_ID             INTEGER                         not null,  /*���˹�����ID       */
   PUBRJ001             VARCHAR2(20)                    not null,  /*�������           */
   PUBRJ002             VARCHAR2(30)                    not null,  /*��������           */
   PUBRJ003             INTEGER,                                   /*���˹�ϵ���÷�ID   */
   PUBRJ004             INTEGER                         not null,  /*������Ŀ����ID     */
   PUBRJ005             INTEGER                         not null,  /*�Է���Ŀ����ID     */
   CREATE_USER          VARCHAR2(12),                              /*������Ա           */
   USER_GROUP           VARCHAR2(12),                              /*������Ա����       */                               
   CREATE_DATE          DATE,                                      /*��������           */
   MODIFIER             VARCHAR2(12),                              /*�޸���Ա           */
   MODI_DATE            DATE,                                      /*�޸�����           */
   FLAG                 NUMBER(1),                                 /*����״̬           */
   constraint PK_TB_PUBRJ primary key (PUBRJ_ID)
);
create unique index AK_TB_PUBRJ on TB_PUBRJ (PUBRJ001);
create sequence SEQ_TB_PUBRJ minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_PUBRJ to public;
grant index  on TB_PUBRJ to public;
grant update on TB_PUBRJ to public; 
grant delete on TB_PUBRJ to public;  
grant insert on TB_PUBRJ to public; 
grant select on SEQ_TB_PUBRJ to public;   