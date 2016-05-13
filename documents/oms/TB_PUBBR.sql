/*
================================================================================
��ṹ����:TB_PUBBR
��ṹ����:Ʒ������ʶ����ӱ�
��ṹĿ��:ȫ�ֱ�
================================================================================
*/

drop sequence SEQ_TB_PUBBR;
drop index AK_TB_PUBBR;
drop table TB_PUBBR;
create table TB_PUBBR  (
   PUBBR_ID             INTEGER                         not null,  /*Ʒ���������ID       */
   PUBBR001             INTEGER                         not null,  /*Ʒ���������ID       */
   PUBBR002             NUMBER(4,2),                               /*��ʼ�ۿ���           */
   PUBBR003             NUMBER(4,2) ,                              /*�����ۿ���           */
   PUBBR004             NUMBER(4) ,                                /*�����               */   
   PUBBR005             VARCHAR2(255),                             /*��ע                 */   
   CREATE_USER          VARCHAR2(12),                              /*������Ա           */
   USER_GROUP           VARCHAR2(12),                              /*������Ա����       */                               
   CREATE_DATE          DATE,                                      /*��������           */
   MODIFIER             VARCHAR2(12),                              /*�޸���Ա           */
   MODI_DATE            DATE,                                      /*�޸�����           */
   FLAG                 NUMBER,                                    /*����״̬           */
   constraint PK_TB_PUBBR primary key (PUBBR_ID)
);
create unique index AK_TB_PUBBR on TB_PUBBR (PUBBR001,PUBBR002,PUBBR003,FLAG);
create sequence SEQ_TB_PUBBR minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_PUBBR to public;
grant index  on TB_PUBBR to public;
grant update on TB_PUBBR to public; 
grant delete on TB_PUBBR to public;  
grant insert on TB_PUBBR to public; 
grant select on SEQ_TB_PUBBR to public;   