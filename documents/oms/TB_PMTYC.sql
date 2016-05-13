20140811 CREATE BY SUNDAN


/*
================================================================================
��ṹ����:TB_PMTYC
��ṹ����:�������۴�����ǩ�ӱ�
��ṹĿ��:�ֲ���
================================================================================
*/

drop sequence SEQ_TB_PMTYC;
drop index AK_TB_PMTYC;
drop table TB_PMTYC;
create table TB_PMTYC  (
   PMTYC_ID             INTEGER                         not null,  /*�������۴�����ǩID             */
   PMTYC001             INTEGER                         not null,  /*�������۴���id           */
   PMTYC002             INTEGER                         not null,  /*BOM��id           */
   PMTYC003             VARCHAR2(80),				   /*BOM������           */
   PMTYC004             INTEGER                         not null,  /*��Ʒid           */
   PMTYC005             VARCHAR2(30)                    not null,  /*��Ʒ����           */
   PMTYC006             VARCHAR2(80),				   /*��Ʒ����           */
   PMTYC007             VARCHAR2(80),                              /*�ͺ�                */ 
   PMTYC008             VARCHAR2(80),                              /*���                */
   PMTYC009             NUMBER(22,2),                              /*���ۼ�                */
   PMTYC010             NUMBER(22,2),                              /*�ײͼ�                */
   PMTYC011             NUMBER(12,2),                              /*�ۿ���                */
   PMTYC012             NUMBER(12,2),                              /*BOM���ײͼ�                */
   PMTYC013             NUMBER(12,2),                              /*BOM���ۿ���                */
   PMTYC014             NUMBER(12,2),                              /*BOM�����ۼ�                */
   
   CREATE_USER          VARCHAR2(12),                              /*������Ա           */
   USER_GROUP           VARCHAR2(12),                              /*������Ա����       */                               
   CREATE_DATE          DATE,                                      /*��������           */
   MODIFIER             VARCHAR2(12),                              /*�޸���Ա           */
   MODI_DATE            DATE,                                      /*�޸�����           */
   FLAG                 NUMBER,                                    /*����״̬           */
   constraint PK_TB_PMTYC primary key (PMTYC_ID)
);
create unique index AK_TB_PMTYC on TB_PMTYA (PMTYC_ID);
create sequence SEQ_TB_PMTYC minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_PMTYC to public;
grant index  on TB_PMTYC to public;
grant update on TB_PMTYC to public; 
grant delete on TB_PMTYC to public;  
grant insert on TB_PMTYC to public; 
grant select on SEQ_TB_PMTYC to public;   