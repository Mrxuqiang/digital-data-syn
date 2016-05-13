/*
================================================================================
��ṹ����:TB_PUBRN
��ṹ����:��Ӧ��Ŀ������
��ṹĿ��:
================================================================================
*/

drop sequence SEQ_TB_PUBRN;
drop index AK_TB_PUBRN;
drop table TB_PUBRN;
create table TB_PUBRN  (
   PUBRN_ID             INTEGER                         not null,  /*��Ӧ��Ŀ����ID     */
   PUBRN001             INTEGER                         not null,  /*��Ӧ��Ŀ��ID       */
   PUBRN002             INTEGER                         not null,  /*��ƿ�ĿID         */
   PUBRN003             VARCHAR2(20),                              /*�����������ʶ     */  
   CREATE_USER          VARCHAR2(12),                              /*������Ա           */
   USER_GROUP           VARCHAR2(12),                              /*������Ա����       */                               
   CREATE_DATE          DATE,                                      /*��������           */
   MODIFIER             VARCHAR2(12),                              /*�޸���Ա           */
   MODI_DATE            DATE,                                      /*�޸�����           */
   FLAG                 NUMBER(1),                                 /*����״̬           */
   constraint PK_TB_PUBRN primary key (PUBRN_ID)
);
create sequence SEQ_TB_PUBRN minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_PUBRN to public;
grant index  on TB_PUBRN to public;
grant update on TB_PUBRN to public; 
grant delete on TB_PUBRN to public;  
grant insert on TB_PUBRN to public; 
grant select on SEQ_TB_PUBRN to public;   