/*
================================================================================
��ṹ����:TB_PMTFP
��ṹ����:����ֵǼǱ�
��ṹĿ��:
================================================================================
*/

drop sequence SEQ_TB_PMTFP;
drop index AK_TB_PMTFP;
drop table TB_PMTFP;
create table TB_PMTFP  (
   PMTFP_ID             INTEGER                         not null,  /*����ֵǼǱ�    */
   PMTFP001             INTEGER                         not null,  /*���۵�ID          */
   PMTFP002             VARCHAR2(2)                     not null,  /*��������          */
   PMTFP003             INTEGER                         not null,  /*������ID          */
   PMTFP004             NUMBER(18,2)				,  /*ʵ������        */
   PMTFP005             NUMBER(12,2)				,  /*���뷵�ֽ�����  */
   PMTFP006             NUMBER(12)				,  /*�ۼƱ���          */
   PMTFP007             NUMBER(12,2)				,  /*Ӧ���ֽ��        */
   CREATE_USER          VARCHAR2(12),                              /*������Ա          */
   USER_GROUP           VARCHAR2(12),                              /*������Ա����      */                               
   CREATE_DATE          DATE,                                      /*��������          */
   MODIFIER             VARCHAR2(12),                              /*�޸���Ա          */
   MODI_DATE            DATE,                                      /*�޸�����          */
   FLAG                 NUMBER(1),                                 /*����״̬          */
   constraint PK_TB_PMTFI primary key (PMTFP_ID)
);
--create unique index AK_TB_PMTFI on TB_PMTFI (PMTFP001);
create sequence SEQ_TB_PMTFI minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_PMTFP to public;
grant index  on TB_PMTFP to public;
grant update on TB_PMTFP to public; 
grant delete on TB_PMTFP to public;  
grant insert on TB_PMTFP to public; 
grant select on SEQ_TB_PMTFP to public;   