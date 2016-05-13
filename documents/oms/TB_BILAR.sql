/*
================================================================================
��ṹ����:TB_BILAR
��ṹ����:�����Żݷ�̯���ӱ�
��ṹĿ��:
================================================================================
*/

drop sequence SEQ_TB_BILAR;
drop index AK_TB_BILAR;
drop table TB_BILAR;
create table TB_BILAR  (
   BILAR_ID             INTEGER                         not null,  /*�����Żݷ�̯����id     */
   BILAR001             INTEGER                         not null, /*�����Żݷ�̯����id     */
   BILAR002             INTEGER                         not null,  /*�̻�id                 */
   BILAR003             INTEGER                         not null,  /*��ͬid                 */
   BILAR004             INTEGER,                                   /*Ʒ��id                 */
   BILAR005             INTEGER,                                   /*չλid                 */
   BILAR006             NUMBER(22,2),                              /*�Żݽ��               */
   BILAR007             VARCHAR2(10),                              /*��˾����               */
   BILAR008             NUMBER(22,2),                              /*��Ż����           */
   BILAR009             NUMBER(22,2),                              /*��Żݹ����         */
   BILAR010             NUMBER(22,2),                              /*�г��ƹ��         */    
   CREATE_USER          VARCHAR2(12),                              /*������Ա           */
   USER_GROUP           VARCHAR2(12),                              /*������Ա����       */                               
   CREATE_DATE          DATE,                                      /*��������           */
   MODIFIER             VARCHAR2(12),                              /*�޸���Ա           */
   MODI_DATE            DATE,                                      /*�޸�����           */
   FLAG                 NUMBER,                                 /*����״̬           */
   constraint PK_TB_BILAR primary key (BILAR_ID)
);
create unique index AK_TB_BILAR on TB_BILAR (BILAR001,BILAR002,BILAR003,BILAR007,FLAG);
create sequence SEQ_TB_BILAR minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_BILAR to public;
grant index  on TB_BILAR to public;
grant update on TB_BILAR to public; 
grant delete on TB_BILAR to public;  
grant insert on TB_BILAR to public; 
grant select on SEQ_TB_BILAR to public;   