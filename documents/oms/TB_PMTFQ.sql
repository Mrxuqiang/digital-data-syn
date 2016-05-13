/*
================================================================================
��ṹ����:TB_PMTFP
��ṹ����:���ֻ��յǼǱ�
��ṹĿ��:
================================================================================
*/

drop sequence SEQ_TB_PMTFQ;
drop index AK_TB_PMTFQ;
drop table TB_PMTFQ;
create table TB_PMTFQ  (
   PMTFQ_ID             INTEGER                         not null,  /*���ֻ��յǼ�ID    */
   PMTFQ001             INTEGER                         not null,  /*���˵�ID          */
   PMTFQ002             VARCHAR2(2)                     not null,  /*��������          */
   PMTFQ003             INTEGER                         not null,  /*������ID          */
   PMTFQ004             NUMBER(18,2)				,  /*ʵ������        */
   PMTFQ005             NUMBER(12,2)				,  /*���뷵�ֽ�����  */
   PMTFQ006             NUMBER(12)				,  /*�ۼƱ���          */
   PMTFQ007             NUMBER(12,2)				,  /*Ӧ���ֽ��        */
   PMTFQ008             NUMBER(12,2)				,  /*ʵ���ֽ��        */
   PMTFQ009             NUMBER(12,2)				,  /*�ѻ����ֽ��      */
   PMTFQ010             NUMBER(12,2)				,  /*����Ӧ�����ֽ��  */
   CREATE_USER          VARCHAR2(12),                              /*������Ա          */
   USER_GROUP           VARCHAR2(12),                              /*������Ա����      */                               
   CREATE_DATE          DATE,                                      /*��������          */
   MODIFIER             VARCHAR2(12),                              /*�޸���Ա          */
   MODI_DATE            DATE,                                      /*�޸�����          */
   FLAG                 NUMBER(1),                                 /*����״̬          */
   constraint PK_TB_PMTFI primary key (PMTFP_ID)
);
--create unique index AK_TB_PMTFI on TB_PMTFI (PMTFP001,PMTFP002,PMTFP003);
create sequence SEQ_TB_PMTFQ minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_PMTFQ to public;
grant index  on TB_PMTFQ to public;
grant update on TB_PMTFQ to public; 
grant delete on TB_PMTFQ to public;  
grant insert on TB_PMTFQ to public; 
grant select on SEQ_TB_PMTFQ to public;   