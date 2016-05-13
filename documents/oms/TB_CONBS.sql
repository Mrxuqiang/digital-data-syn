/*
================================================================================
��ṹ����:TB_CONBS
��ṹ����:��ͬ��Ʒ�Ʊ�
��ṹĿ��:�ֲ���
================================================================================
*/

drop sequence SEQ_TB_CONBS;
drop index AK_TB_CONBS;
drop table TB_CONBS;
create table TB_CONBS  (
   CONBS_ID             INTEGER                         not null,  /*��ͬ������ĿID      */
   CONBS001             INTEGER                         not null,  /*��ͬID              */
   CONBS002             INTEGER                         not null,  /*Ʒ��ID              */
   CONBS003             INTEGER,                                   /*��ӪС��ID          */ 20120412 add by gaoxl for 11892  
   CONBS004             INTEGER,                                   /*����ID              */ 20131202 add by ouwx  ����ѡ�񣬵�ǰ��ͬ�еĳ���
   CONBS005             NUMBER(12,2),                               /*�������            */ 20131202 add by ouwx  �ֹ����룬���ڵ�ǰ���ؿ������
   CREATE_USER          VARCHAR2(12),                              /*������Ա            */
   USER_GROUP           VARCHAR2(12),                              /*������Ա����        */                               
   CREATE_DATE          DATE,                                      /*��������            */
   MODIFIER             VARCHAR2(12),                              /*�޸���Ա            */
   MODI_DATE            DATE,                                      /*�޸�����            */
   FLAG                 NUMBER(1),                                 /*����״̬            */
   constraint PK_TB_CONBS primary key (CONBS_ID)
);
/*create unique index AK_TB_CONBS on TB_CONBS (CONBS001,CONBS002);*/
create unique index AK_TB_CONBS on TB_CONBS (CONBS001,CONBS002,CONBS003,FLAG);/*20120412 add by gaoxl for 11892  */
create sequence SEQ_TB_CONBS minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_CONBS to public;
grant index  on TB_CONBS to public;
grant update on TB_CONBS to public; 
grant delete on TB_CONBS to public;  
grant insert on TB_CONBS to public; 
grant select on SEQ_TB_CONBS to public;   