/*
================================================================================
��ṹ����:TB_OTSDH
��ṹ����:OMS�̳���SAP�ɱ����Ķ��ձ���չ�ϵ��
��ṹĿ��:
================================================================================
*/

drop sequence SEQ_TB_OTSDH;
drop index AK_TB_OTSDH;
drop table TB_OTSDH;
create table TB_OTSDH  (
   OTSDH_ID             INTEGER                         not null,  /*���õ�ID             */
   OTSDH001             INTEGER                         not null,  /*�̳�ID               */
   OTSDH002             VARCHAR2(100)                   not null,  /*SAP��˾����          */
   OTSDH004             VARCHAR2(200)                   not null,  /*�ɱ�����             */
   OTSDH005             VARCHAR2(200)                   not null,  /*��������             */
   CREATE_USER          VARCHAR2(12),                              /*������Ա             */
   USER_GROUP           VARCHAR2(12),                              /*������Ա����         */                               
   CREATE_DATE          DATE,                                      /*��������             */
   MODIFIER             VARCHAR2(12),                              /*�޸���Ա             */
   MODI_DATE            DATE,                                      /*�޸�����             */
   FLAG                 NUMBER(1),                                 /*����״̬             */
   constraint PK_TB_OTSDH primary key (OTSDH_ID)
);
create sequence SEQ_TB_OTSDH minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_OTSDH to public;
grant index  on TB_OTSDH to public;
grant update on TB_OTSDH to public; 
grant delete on TB_OTSDH to public;  
grant insert on TB_OTSDH to public; 
grant select on SEQ_TB_OTSDH to public;   