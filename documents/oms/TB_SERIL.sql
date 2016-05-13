/*
================================================================================
��ṹ����:TB_SERIL
��ṹ����:�̻����÷����µ�����
��ṹĿ��:�ֲ���
================================================================================
*/

drop sequence SEQ_TB_SERIL;
drop index AK_TB_SERIL;
drop table TB_SERIL;
create table TB_SERIL  (
   SERIL_ID             INTEGER                         not null,  /*�µ���ID       */
   SERIL001             INTEGER                         not null,  /*�̳�ID     */
   SERIL002             INTEGER,                                   /*�̻�ID     */
   SERIL003             NUMBER(4),                                 /*���       */
   SERIL004             NUMBER(2),                                 /*�·�       */   
   SERIL005             NUMBER(4),                                 /*�۷ֺϼ�   */
   SERIL006             INTEGER,                                   /*���õȼ�   */          
   CREATE_USER          VARCHAR2(12),                              /*������Ա           */
   USER_GROUP           VARCHAR2(12),                              /*������Ա����       */                               
   CREATE_DATE          DATE,                                      /*��������           */
   MODIFIER             VARCHAR2(12),                              /*�޸���Ա           */
   MODI_DATE            DATE,                                      /*�޸�����           */
   FLAG                 NUMBER,                                    /*����״̬           */
   constraint PK_TB_SERIL primary key (SERIL_ID)
);
create unique index AK_TB_SERIL on TB_SERIL (SERIL001,SERIL002,SERIL003,SERIL004,FLAG);
create sequence SEQ_TB_SERIL minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_SERIL to public;
grant index  on TB_SERIL to public;
grant update on TB_SERIL to public; 
grant delete on TB_SERIL to public;  
grant insert on TB_SERIL to public; 
grant select on SEQ_TB_SERIL to public;   