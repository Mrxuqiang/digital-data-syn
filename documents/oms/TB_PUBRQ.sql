/*
================================================================================
��ṹ����:TB_PUBRQ
��ṹ����:��������Ŀ��
��ṹĿ��:
================================================================================
*/

drop sequence SEQ_TB_PUBRQ;
drop index AK_TB_PUBRQ;
drop table TB_PUBRQ;
create table TB_PUBRQ  (
   PUBRQ_ID             INTEGER                         not null,  /*��������ĿID   */
   PUBRQ001             INTEGER                         not null,  /*���������ID     */
   PUBRQ002             INTEGER                         not null,  /*��Ŀ����ID       */
   PUBRQ003             VARCHAR2(30)                    not null,  /*��Ŀ����         */
   PUBRQ004             VARCHAR2(20),                              /*ת�븨���������ʶ   */
   PUBRQ005             VARCHAR2(20),                              /*ת�������������ʶ   */
   PUBRQ006             INTEGER                         not null,  /*����ID           */
   PUBRQ007             VARCHAR2(1)                     not null,  /*�Ƿ���������� */
   CREATE_USER          VARCHAR2(12),                              /*������Ա         */
   USER_GROUP           VARCHAR2(12),                              /*������Ա����     */                               
   CREATE_DATE          DATE,                                      /*��������         */
   MODIFIER             VARCHAR2(12),                              /*�޸���Ա         */
   MODI_DATE            DATE,                                      /*�޸�����         */
   FLAG                 NUMBER(1),                                 /*����״̬         */
   constraint PK_TB_PUBRQ primary key (PUBRQ_ID)
);
create unique index AK_TB_PUBRQ on TB_PUBRQ (PUBRQ001,PUBRQ002);
create sequence SEQ_TB_PUBRQ minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_PUBRQ to public;
grant index  on TB_PUBRQ to public;
grant update on TB_PUBRQ to public; 
grant delete on TB_PUBRQ to public;  
grant insert on TB_PUBRQ to public; 
grant select on SEQ_TB_PUBRQ to public;   