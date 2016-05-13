/*
================================================================================
��ṹ����:TB_GRTAA
��ṹ����:Ͷ������
��ṹĿ��:
================================================================================
*/

drop sequence SEQ_TB_GRTAA;
drop index AK_TB_GRTAA;
drop table TB_GRTAA;
create table TB_GRTAA  (
   GRTAA_ID             INTEGER                         not null,  /*Ͷ������ID     */
   GRTAA001             INTEGER                         not null,  /*Ͷ�ʷ�ID   */
   GRTAA002             INTEGER                         not null,  /*��Ͷ�ʷ�ID       */
   GRTAA003             DATE                            not null,  /*����        */
   GRTAA004             NUMBER(5,4)                    not null,  /*�ֹɱ����䶯       */ 
   GRTAA005             VARCHAR2(1)                     not null,  /*��ƺ��㷽ʽ   */ 
   GRTAA006             VARCHAR2(1),                               /*�Զ�����Ȩ�淨����ƾ֤   */  
   CREATE_USER          VARCHAR2(12),                              /*������Ա           */
   USER_GROUP           VARCHAR2(12),                              /*������Ա����       */                               
   CREATE_DATE          DATE,                                      /*��������           */
   MODIFIER             VARCHAR2(12),                              /*�޸���Ա           */
   MODI_DATE            DATE,                                      /*�޸�����           */
   FLAG                 NUMBER(1),                                 /*����״̬           */
   constraint PK_TB_GRTAA primary key (GRTAA_ID)
);
create sequence SEQ_TB_GRTAA minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_GRTAA to public;
grant index  on TB_GRTAA to public;
grant update on TB_GRTAA to public; 
grant delete on TB_GRTAA to public;  
grant insert on TB_GRTAA to public; 
grant select on SEQ_TB_GRTAA to public;   