/*
================================================================================
��ṹ����:TB_SYSED
��ṹ����:������Ŀʵ�α�
��ṹĿ��:
================================================================================
*/

drop sequence SEQ_TB_SYSED;
drop index AK_TB_SYSED;
drop table TB_SYSED;
create table TB_SYSED  (
   SYSED_ID             INTEGER                         not null,  /*������Ŀʵ��ID   */
   SYSED001             INTEGER                         not null,  /*������ĿID       */
   SYSED002             INTEGER                         not null,  /*�������ID       */
   SYSED003             VARCHAR2(16)                    not null,  /*������           */
   SYSED004             VARCHAR2(30)                    not null,  /*����ֵ           */
   CREATE_USER          VARCHAR2(12),                              /*������Ա         */
   USER_GROUP           VARCHAR2(12),                              /*������Ա����     */                               
   CREATE_DATE          DATE,                                      /*��������         */
   MODIFIER             VARCHAR2(12),                              /*�޸���Ա         */
   MODI_DATE            DATE,                                      /*�޸�����         */
   FLAG                 NUMBER(1),                                 /*����״̬         */
   constraint PK_TB_SYSED primary key (SYSED_ID)
);
create unique index AK_TB_SYSED on TB_SYSED (SYSED001,SYSED002);
create sequence SEQ_TB_SYSED minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_SYSED to public;
grant index  on TB_SYSED to public;
grant update on TB_SYSED to public; 
grant delete on TB_SYSED to public;  
grant insert on TB_SYSED to public; 
grant select on SEQ_TB_SYSED to public;   