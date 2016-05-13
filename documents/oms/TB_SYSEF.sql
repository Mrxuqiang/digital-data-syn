/*
================================================================================
��ṹ����:TB_SYSEF
��ṹ����:����������־��
��ṹĿ��:
================================================================================
*/

drop sequence SEQ_TB_SYSEF;
drop index AK_TB_SYSEF;
drop table TB_SYSEF;
create table TB_SYSEF  (
   SYSEF_ID             INTEGER                         not null,  /*����������־ID   */
   SYSEF001             INTEGER                         not null,  /*������ĿID       */
   SYSEF002             DATE                            not null,  /*��ʼ����         */
   SYSEF003             DATE                            not null,  /*��ʼʱ��         */
   SYSEF004             DATE                            not null,  /*��������         */
   SYSEF005             DATE                            not null,  /*����ʱ��         */
   SYSEF006             NUMBER(12)                      not null,  /*��ʱ(��)         */
   SYSEF007             INTEGER                         not null,  /*����Ӫ����֯ID   */
   SYSEF008             VARCHAR2(1)                     not null,  /*���             */
   SYSEF009             VARCHAR2(255),                             /*˵��             */
   CREATE_USER          VARCHAR2(12),                              /*������Ա         */
   USER_GROUP           VARCHAR2(12),                              /*������Ա����     */                               
   CREATE_DATE          DATE,                                      /*��������         */
   MODIFIER             VARCHAR2(12),                              /*�޸���Ա         */
   MODI_DATE            DATE,                                      /*�޸�����         */
   FLAG                 NUMBER(1),                                 /*����״̬         */
   constraint PK_TB_SYSEF primary key (SYSEF_ID)
);
create unique index AK_TB_SYSEF on TB_SYSEF (SYSEF001,SYSEF002,SYSEF003,SYSEF007);
create sequence SEQ_TB_SYSEF minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_SYSEF to public;
grant index  on TB_SYSEF to public;
grant update on TB_SYSEF to public; 
grant delete on TB_SYSEF to public;  
grant insert on TB_SYSEF to public; 
grant select on SEQ_TB_SYSEF to public;   