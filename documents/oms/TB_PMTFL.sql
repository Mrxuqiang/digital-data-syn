/*
================================================================================
��ṹ����:TB_PMTFL
��ṹ����:����ȯ���ŵ�
��ṹĿ��:
================================================================================
*/

drop sequence SEQ_TB_PMTFK;
drop index AK_TB_PMTFK;
drop table TB_PMTFK;
create table TB_PMTFL  (
   PMTFL_ID             INTEGER                         not null,  /*����ȯ���ŵ�id*/
   PMTFL001             INTEGER                         not null,  /*���۵�ID */
   PMTFL002             VARCHAR2(2),				   /*��������*/		
   PMTFL003             INTEGER,				   /*������ID */
   PMTFL004             INTEGER,			           /*ȯ��ID   */
   PMTFL005             NUMBER(12,2),				   /*ʵ������*/
   PMTFL006             NUMBER(12,2),				   /*���뷵ȯ������*/
   PMTFL007             NUMBER(12,2),				   /*�ۼƱ���*/
   PMTFL008             NUMBER(12,2),				   /*Ӧ��ȯ���*/
   PMTFL009             NUMBER(12)                    ,  /*��ȯ����         */
   CREATE_USER          VARCHAR2(12),                              /*������Ա          */
   USER_GROUP           VARCHAR2(12),                              /*������Ա����      */                               
   CREATE_DATE          DATE,                                      /*��������          */
   MODIFIER             VARCHAR2(12),                              /*�޸���Ա          */
   MODI_DATE            DATE,                                      /*�޸�����          */
   FLAG                 NUMBER(1),                                 /*����״̬          */
   constraint PK_TB_PMTFL primary key (PMTFL_ID)
);
create unique index AK_TB_PMTFL on TB_PMTFL (PMTFL001,PMTFL003);
create sequence SEQ_TB_PMTFL minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_PMTFL to public;
grant index  on TB_PMTFL to public;
grant update on TB_PMTFL to public; 
grant delete on TB_PMTFL to public;  
grant insert on TB_PMTFL to public; 
grant select on SEQ_TB_PMTFL to public;  