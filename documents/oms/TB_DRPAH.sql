/*
================================================================================
��ṹ����:TB_DRPAH
��ṹ����:�ϲ���λ��ֹɱ�����
��ṹĿ��:
================================================================================
*/

drop sequence SEQ_TB_DRPAH;
drop index AK_TB_DRPAH;
drop table TB_DRPAH;
create table TB_DRPAH  (
   DRPAH_ID             INTEGER                         not null,  /* ��ID               */
   DRPAH001             INTEGER                         not null,  /* �ϲ���Χ��ID       */
   DRPAH002             INTEGER                         not null,  /* Ͷ�ʵ�λID         */
   DRPAH003             INTEGER,                                   /* ��Ͷ�ʵ�λID       */    
   DRPAH004             NUMBER(5,4),                               /* Ͷ�ʱ���           */             
   CREATE_USER          VARCHAR2(12),                              /*������Ա           */
   USER_GROUP           VARCHAR2(12),                              /*������Ա����       */                               
   CREATE_DATE          DATE,                                      /*��������           */
   MODIFIER             VARCHAR2(12),                              /*�޸���Ա           */
   MODI_DATE            DATE,                                      /*�޸�����           */
   FLAG                 NUMBER(1),                                 /*����״̬           */
   constraint PK_TB_DRPAH primary key (DRPAH_ID)
);
create sequence SEQ_TB_DRPAH minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_DRPAH to public;
grant index  on TB_DRPAH to public;
grant update on TB_DRPAH to public; 
grant delete on TB_DRPAH to public;  
grant insert on TB_DRPAH to public; 
grant select on SEQ_TB_DRPAH to public;   