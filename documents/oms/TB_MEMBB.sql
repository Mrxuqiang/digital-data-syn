/*
================================================================================
��ṹ����:TB_MEMBB
��ṹ����:��Ա����������
��ṹĿ��:
================================================================================
*/

drop sequence SEQ_TB_MEMBB;
drop index AK_TB_MEMBB;
drop table TB_MEMBB;
create table TB_MEMBB  (
   MEMBB_ID             INTEGER                         not null,  /*��Ա���������ID   */
   MEMBB001             INTEGER                         not null,  /*��Ա������ID       */
   MEMBB002             INTEGER                         not null,  /*�������           */
   MEMBB003             VARCHAR2(1)                     not null,  /*�ɻ���             */
   MEMBB004             VARCHAR2(1)                     not null,  /*���ۿ�             */
   CREATE_USER          VARCHAR2(12),                              /*������Ա           */
   USER_GROUP           VARCHAR2(12),                              /*������Ա����       */                               
   CREATE_DATE          DATE,                                      /*��������           */
   MODIFIER             VARCHAR2(12),                              /*�޸���Ա           */
   MODI_DATE            DATE,                                      /*�޸�����           */
   FLAG                 NUMBER(1),                                 /*����״̬           */
   constraint PK_TB_MEMBB primary key (MEMBB_ID)
);
create unique index AK_TB_MEMBB on TB_MEMBB (MEMBB001,MEMBB002);
create sequence SEQ_TB_MEMBB minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_MEMBB to public;
grant index  on TB_MEMBB to public;
grant update on TB_MEMBB to public; 
grant delete on TB_MEMBB to public;  
grant insert on TB_MEMBB to public; 
grant select on SEQ_TB_MEMBB to public;   